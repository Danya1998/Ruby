require_relative 'project'
require_relative 'task'

module Interface

  def create_project
    puts "Enter name of project:\n"
    name_of_project = gets.chomp
    project = Project.new(name_of_project)
    project.new_project_in_hash
    while true
      puts "Do you want to enter task for #{name_of_project}?"
      task = gets.chomp
      if task == 'y' and 'Y'
        task = Task.new
        task = task.enter_value_of_task
        project.append_task_for_project(task)
      else break end
    end
    project.print_all_projects
    #project.delete_project
    #project.delete_all_task
    project.count_of_projects_with_estimation
  end
end
