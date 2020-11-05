require_relative 'task'

class Project
  attr_accessor :project_name
  @@projects = Hash.new
  def initialize(project_name)
    @project_name = project_name
    @task = Array.new
  end

  def append_task_for_project(task)
    '''Appending task for concrete project'''
    @@projects[@project_name] = @task.append(task)
  end

  def new_project_in_hash
    '''Append new project in hash'''
    @@projects[@project_name] = @task
  end

  def print_all_projects
    p @@projects
  end

  def count_of_projects_without_estimation
    #count project without estimation
    values = @@projects.values.flatten
    values.count(nil)
  end

  def count_of_projects_with_estimation
    #count project with estimation
    project_without_estimation = count_of_projects_without_estimation
    count_of_arr = @@projects.values.flatten(1)
    p count_of_arr.count - project_without_estimation
  end
  def delete_project
    '''Delete a project'''
    puts "Enter key value:"
    key = gets.chomp
    @@projects.delete(key)
    p @@projects
  end

  def delete_all_task
    '''Delete all task for project'''
    puts "Enter name for project which tasks you want to delete:"
    key = gets.chomp
    @@projects[key].clear
    p @@projects
  end
end
