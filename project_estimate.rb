=begin
class Project
  attr_accessor :project_name
  @@projects = Hash.new
  def initialize(project_name)
    @project_name = project_name
    @task = Task.new
  end

  def create_task_for_project
    @task.create_task
  end

  def new_project_in_hash
    @@projects[@project_name] = @task.tasks
  end

  def count_of_projects
    p @@projects.keys.count
  end
  
  def count_of_projects_without_estimation
    values = @@projects.values.flatten
    values.count(nil)
  end

  def count_of_projects_with_estimation
    project_without_estimation = count_of_projects_without_estimation
    p project_without_estimation
    count_of_arr = @@projects.values.flatten(1)
    p count_of_arr.count - project_without_estimation
  end
  def delete_project
    puts "Enter key value:"
    key = gets.chomp
    @@projects.delete(key)
    p @@projects
  end

  def delete_task
    @task.delete_task
  end
end

class Task
  attr_accessor :tasks
  def initialize
    @tasks = Array.new
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

  def create_task
    @tasks.append(enter_value_of_task)
  end

end

if __FILE__ == $0
  while true
    puts "Enter name of project:\n"
    name_of_project = gets.chomp
    project = Project.new(name_of_project)
    while true
      puts "Do you want to enter task for #{name_of_project}?"
      task = gets.chomp
      if task == 'y' and 'Y'
      project.create_task_for_project
      else break
      end
    end
    project.new_project_in_hash
    puts "Do you want to create a new project?"
    if gets.chomp != 'y' and 'Y'
      #project.count_of_projects
      p project.count_of_projects_without_estimation
      project.count_of_projects_with_estimation
      break
    end
  end
end
=end
