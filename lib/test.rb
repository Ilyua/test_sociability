class Test
  attr_reader :get_yes_answers, :get_sometimes_answers

  def initialize
    @questions = File.readlines("#{File.dirname(__FILE__)}/../data/questions.txt")
    @yes_answers = 0
    @sometimes_answers = 0
  end

  def start(name)
    if name == nil
      user_name = "Незнакомец"
    else
      user_name = name
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

      unless (1..3).include?(user_answer)
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
end
