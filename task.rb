class Task
  attr_accessor :name_of_task, :description_of_task, :estimation_of_task
=begin
  def initialize
    @tasks = Array.new
  end
=end
  def initialize
    @name_of_task = name_of_task
    @description_of_task =description_of_task
    @estimation_of_task = estimation_of_task
  end

  def enter_value_of_task
    puts "Enter name of task:\n"
    name_of_task = gets.chomp
    puts "Enter description of task:\n"
    description_of_task = gets.chomp
    puts "Do you want to estimate task?\n"
    user_answer = gets.chomp
    if user_answer === 'y' and 'Y'
      puts "Enter the estimation of the task:\n"
      estimation_of_task = gets.chomp
    end
    return name_of_task, description_of_task, estimation_of_task
  end

end
