require "./test"
require "./result"

test = Test.new
test.start
test.testing

result = Result.new(test.get_yes_answers,test.get_sometimes_answers)
result.print_result
