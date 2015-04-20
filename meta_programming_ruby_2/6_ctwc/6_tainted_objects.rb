# read user input

#user_input = "User input: #{gets()}"
#puts user_input.tainted?

$SAFE = 1
user_input = "User input: #{gets()}"
eval user_input
