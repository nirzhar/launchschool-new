# calculator.rb

# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# out put the result

# answer = Kernel.gets()
# Kernel.puts(answer)

# create a method for prompting the user, so it is clear for the user/reader.

def prompt(message)
  puts("=> #{message}")
end

def valid_number(num)
  num.to_i() != 0
end

def operation_confirmation(op)
  case op
  when '1'
    "Adding" # because the case statment is the last expression in this method,
    # it will automatically return one of the strings, so we don't
    # have to write, return "Adding"
  when '2'
    "Subtracting"
  when '3'
    "Multiplying"
  when '4'
    "Dividiing"
  end
end

prompt("Welcome to Club Calculator! Wassa name, my friend?")
# Kernel.puts("Welcome to the Club Calculator!")

name = ''
loop do
  name = Kernel.gets.chomp()

  if name.empty?()
    prompt("I gots to know your name.")
  else
    break
  end
end

loop do # main loop
  number1 = '' # initialize variable, number1, outsdide of this loop so that it
  # is accessible in the case statement.
  loop do
    prompt("What's the first number, #{name}?")
    number1 = Kernel.gets().chomp()

    if valid_number(number1)
      break
    else
      prompt("Hmmm...that's not a valid number, guy. Check it; try a number,
        not letter.")
    end
  end

  number2 = ''
  loop do
    prompt("What's the second number, #{name}?")
    number2 = Kernel.gets().chomp()
    if valid_number(number2)
      break
    else
      prompt("Hmmm...that's not a valid number, guy. Check it; try a number,
        not letter.")
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
      prompt("Need to choose 1, 2, 3, or 4, #{name}. Please and thank you.")
    end
  end

  prompt("#{operation_confirmation(operator)} the two numbers.")

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

  prompt("Do you want to perform another calculation? Type 'y' for yes.")
  answer = gets.chomp
  break unless answer.downcase().start_with?('y') # stat_with? is a method all
  # strings have in Ruby.
end

prompt("Thank you for using the calculator, #{name}, ma dood! Happy happies for
  you today!")

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
