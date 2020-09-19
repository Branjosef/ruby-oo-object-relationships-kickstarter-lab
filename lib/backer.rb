require 'pry'

class Backer

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def back_project(project)
    ProjectBacker.new(project, self)
  end

  def backed_projects
    projects = ProjectBacker.all.select do |p|
     p.backer == self
    end
    projects.map do |p|
    p.project
    end   
    #binding.pry
   end
end