# input: loan amount, apr, loan duration
# output: monthly payment
# needed for output: monthly interest rate (APR/1200), loan duration in months
# m = p * (j/(1 - (1 + j)**(-n)))
#
#     m = monthly payment
#     p = loan amount
#     j = monthly interest rate = APR/1200
#     n = loan duration in months
# three inputs, numeric, loan & monthly payment = float, loan duration = integer
# each needs validation loops
# prompt the user
#
def monthly_payment(loan_amount, apr, loan_in_months)
  mpr = monthly_interest_rate(apr)
  loan_amount * (mpr/(1 - (1 + mpr)**(-loan_in_months)))
end

def monthly_interest_rate(apr)
  apr / 1200
end

def valid_number?(str)
  # is it floaty or integery? returns boolean
  str.delete('%')
  !!(/^\d+(\.+\d+)?$/.match(str))
end

def prompt(str)
  puts str
end

prompt("Welcome to your handy dandy Mortgage Calc!")

loop do
  loan_amount = ''
  loop do
    prompt("Please enter the amount of your loan:")
    loan_amount = gets.chomp
    if valid_number?(loan_amount)
      loan_amount = loan_amount.to_f
      break
    else
      prompt("I can't work with that. Try again?")
    end
  end

  apr = ''
  loop do
    prompt("Please enter your loan's APR, in percent (25%):")
    apr = gets.chomp
    if valid_number?(apr)
      apr = apr.to_f
      break
    else
      prompt("I can't work with that. Try again?")
    end
  end

  loan_in_months = ''
  loop do
    prompt("What is the duration of your loan in months?")
    loan_in_months = gets.chomp
    if valid_number?(loan_in_months)
      loan_in_months = loan_in_months.to_i
      break
    else
      prompt("I can't work with that. Try again?")
    end
  end

  result = <<-RESULT
  ***
  Given the loan amount $#{loan_amount}:
  with a term of #{loan_in_months} months,
  at an annual percentage rate of #{apr}%,
  your monthly payment is $#{monthly_payment(loan_amount, apr, loan_in_months)}.
  ***
  RESULT
  prompt(result)

  prompt("Would you like me to perform another calculation? [Y/N]")
  answer = gets.chomp.downcase
  break unless answer.start_with?('y')
end
prompt("This has been your handy dandy Mortgage Calc! Signing off.")
