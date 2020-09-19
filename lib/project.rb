require 'pry'

class Project

  attr_reader :title

  def initialize(title)
    @title = title
  end

  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end

  def backers
   backers = ProjectBacker.all.select do |p|
    p.project == self
   end
   backers.map do |b|
   b.backer
   end   
   #binding.pry
  end


end