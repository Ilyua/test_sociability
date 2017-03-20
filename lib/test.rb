class Test
  def initialize
    @questions = File.readlines("#{File.dirname(__FILE__)}/../data/questions.txt")
    @yes_answers = 0
    @sometimes_answers = 0
  end

  def start
    if ARGV[0] == nil
      user_name = "Незнакомец"
    else
      user_name = ARGV[0]
    end

    puts "Привет, #{user_name}"
    puts "Ответьте на вопросы"
    puts "Отвечайте yes(1), no(2) sometimes(3)"
    puts "\n\n"
  end

  def testing
    for item in @questions do
      puts item
      user_answer = nil

      while user_answer != 1 &&
            user_answer != 2 &&
            user_answer != 3 do
          puts "Отвечайте yes(1),no(2) sometimes(3)"
          user_answer = STDIN.gets.to_i
        end

        case user_answer
        when 1
          @yes_answers += 1
        when 3
          @sometimes_answers += 1
        end
    end
  end

  def get_yes_answers
    @yes_answers
  end

  def get_sometimes_answers
    @sometimes_answers
  end
end
