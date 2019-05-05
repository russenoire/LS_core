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
def monthly_payment()
end

def monthly_interest_rate()
end

def loan_in_months()
end

def valid_number?(str)
  # is it floaty? returns boolean

end

def prompt(str)
  puts str
end


welcome = <<-MSG
  Welcome to your handy dandy Mortgage Calc!
  Please enter the amount of your loan, in dollars and cents:
MSG

prompt(welcome)
loan_amount = gets.chomp
