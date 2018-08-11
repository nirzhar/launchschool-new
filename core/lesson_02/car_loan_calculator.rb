# car_loan_calculator.rb 080918

LANGUAGE = 'en'
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
# ask user for the length of the loan duration in months
  # validate input as integer
# calculate monthly interest rate
# calculate loan duration in months
# output monthly payment

#######################################

def prompt(message)
  puts("=> #{message}")
end

def valid_number?(input)
  /\d/.match(input) && /^\d*\.?\d*$/.match(input)
end

def valid_integer?(input)
  /^\d+$/.match(input)
end


prompt("Hi! Welcome to the best car loan calculator in the world!!
  What's your name?")

name = ''
loop do
  name = gets.chomp
  if name.empty?
    prompt("Please, I need to know your name, not your phone number!")
  else
    break
  end
end

loop do # main loop

  loan_amount = ''
  loop do
    prompt("What's the loan amount you need?")
    loan_amount = gets.chomp

    if valid_number?(loan_amount)
      break
    else
      prompt("That's not a valid number. Use numbers, please.")
    end
  end

  apr_interest = ''
  loop do
    prompt("What's the interest rate the bank gave you?")
    apr_interest = gets.chomp
    if valid_number?(apr_interest)
      break
    else
      prompt("That number does not look right. What gives?")
    end
  end

# loan duration:

loan_duration = ''

loop do
  prompt("How many months is the loan duration?")
  loan_duration = gets.chomp
  if valid_integer?(loan_duration)
    break
  else
    prompt("Your loan duration must be a number.")
  end
end
  # calculation:

  monthly_interest_rate = apr_interest / 12
  monthly_repayment = loan_amount.to_f() * (monthly_interest_rate / (1 - (1 + monthly_interest_rate) ** (- loan_duration)))

  prompt("Your monthly payment is #{monthly_repayment}")


end
