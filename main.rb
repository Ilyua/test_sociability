require_relative "lib/test"
require_relative "lib/result"

test = Test.new
test.start(ARGV[0])
test.testing

result = Result.new(test.get_yes_answers, test.get_sometimes_answers)
result.print_result
