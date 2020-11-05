require_relative 'project'
require_relative 'task'

if __FILE__ == $0
  while true
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
      else break
      end
    end
    puts "Do you want to create a new project?"
    if gets.chomp != 'y' and 'Y'
      project.print_all_projects
      #project.delete_project
      #project.delete_all_task
      project.count_of_projects_with_estimation
      break
    end
  end
end