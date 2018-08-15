# car_loan_calculator.rb 080918

LANGUAGE = 'en'

require 'yaml'
MESSAGES = YAML.load_file('car_loan_messages.yml')
# You'll need these three pieces of information:
  # the loan amount
  # the APR
  # the loan duration

# calculate:
  # monthly interest rate
  # loan duration months

#####################################

# ask user for the loan amount requested
  # validate input as integer
# ask user for the APR
  # validate input as float
# ask user for the length of the loan duration in years
  # validate input as integer
# calculate monthly interest rate
# calculate loan duration in months
# output monthly payment
# ask if user wants to calculate again

#######################################

def prompt(message)
  puts("=> #{message}")
end

def check_name(input)
  input.scan(/\D/).empty?
end

def valid_number(input)
  /\d/.match(input) && /^\d*\.?\d*$/.match(input)
end

puts
puts

prompt(MESSAGES['welcome'])
puts
puts "................................................."
puts

prompt("What's your name?")

name = ''
loop do
  name = gets.chomp
  if check_name(name)
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

puts

loop do # main loop

  loan_amount = ''
  loop do
    prompt("How much money do you need, #{name}?")
    loan_amount = gets.chomp

    if valid_number(loan_amount)
      break
    else
      prompt(MESSAGES['valid_number'])
    end
  end

  puts

  interest_rate = ''
  loop do
    prompt(MESSAGES['interest_rate'])
    interest_rate = gets.chomp

    if valid_number(interest_rate)
      break
    else
      prompt(MESSAGES['valid_number'])
    end
  end

  puts
  # loan duration:

  loan_duration = ''

  loop do
    prompt(MESSAGES['loan_duration'])
    loan_duration = gets.chomp
    if valid_number(loan_duration)
      break
    else
      prompt(MESSAGES['valid_number'])
    end
  end

  puts
  # calculation:

  annual_interest_rate = interest_rate.to_f()/100
  monthly_interest_rate = annual_interest_rate / 12
  months = loan_duration.to_i * 12
  monthly_repayment = loan_amount.to_f() *
  (monthly_interest_rate / (1 - (1 + monthly_interest_rate) **
  (- months.to_i)))

  prompt("Your monthly payment is $#{format('%02.2f', monthly_repayment)}")

  puts
  prompt(MESSAGES['another_calculation'])

  calculate_again = gets.chomp
  break unless calculate_again == 'y' || calculate_again == 'Y'
    prompt(MESSAGES['calculate_again'])
end

  puts
  prompt(MESSAGES['goodbye'])

puts
puts
