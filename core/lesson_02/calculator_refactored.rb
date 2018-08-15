# calculator.rb

LANGUAGE = 'en'

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

# ( cmd + / to comment out multi-lines. )
# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

# create a method for prompting the user, so it is clear for the user/reader.

 def prompt(message)
   puts("=> #{message}")
 end


def float?(input)
  /\d/.match(input) && /^\d*\.?\d*$/.match(input)
end


def operation_confirmation(op)
  word = case op
        when '1'
          "Adding" # because the case statment is the last expression in this method,
          # it will automatically return one of the strings, so we don't
          # have to write, return "Adding"
        when '2'
          "Subtracting"
        when '3'
          "Multiplying"
        when '4'
          "Dividing"
        end
  word
end

prompt(MESSAGES['welcome'])
# Kernel.puts("Welcome to the Club Calculator!")

name = ''
loop do
  name = Kernel.gets.chomp()

  if name.empty?()
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

loop do # main loop
  number1 = '' # initialize variable, number1, outsdide of this loop so that it
  # is accessible in the case statement.
  loop do
    prompt(MESSAGES['number1'])
    number1 = Kernel.gets().chomp()

    if float?(number1)
      break
    else
      prompt(MESSAGES['valid_number'])
    end
  end

  number2 = ''
  loop do
    prompt(MESSAGES['number2'])
    number2 = Kernel.gets().chomp()
    if float?(number2)
      break
    else
      prompt(MESSAGES['valid_number'])
    end
  end

  # heredoc allows you to write multi line string.
  operator_prompt = <<-MSG
  What operation would you like to perform? Pick one of the numbers from below.

    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)

  operator = ''

  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES['valid_operator'])
    end
  end

  prompt("#{operation_confirmation(operator)} the two numbers.. .")

  result = case operator
           when '1'
             number1.to_i() + number2.to_i()
           when '2'
             number1.to_i() - number2.to_i()
           when '3'
             number1.to_i() * number2.to_i()
           when '4'
             number1.to_i() / number2.to_i()
           end

  prompt("The result is #{result}")

  prompt(MESSAGES['another_calculation'])
  answer = gets.chomp
  break unless answer.downcase().start_with?('y') # stat_with? is a method all
  # strings have in Ruby language.
end

prompt(MESSAGES['goodbye'])

### instead of case statement
# if operator == '1'
#  result = number1.to_i() + number2.to_i()
# elsif operator == '2'
#  result = number1.to_i() - number2.to_i()
# elsif operator == '3'
#  result = number1.to_i() * number2.to_i()
# else operator == '4'
#  result = number1.to_f() / number2.to_f() #to_f converts
# string to float representation.
# end
# prompt("The result is #{(result)}")
