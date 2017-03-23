class Result
  def initialize(yes_answers, sometimes_answers)
    @results = File.readlines("#{File.dirname(__FILE__)}/../data/results.txt")
    @yes_answers = yes_answers
    @sometimes_answers = sometimes_answers
  end

  def print_result
    puts "Ваш результат:"

    case @yes_answers * 2 + @sometimes_answers
    when 0..3
      puts @results[6]
    when 4..8
      puts @results[5]
    when 9..13
      puts @results[4]
    when 14..18
      puts @results[3]
    when 19..24
      puts @results[2]
    when 25..29
      puts @results[1]
    when 30..32
      puts @results[0]
    end
  end
end
