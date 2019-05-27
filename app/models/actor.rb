require 'pry'

class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters


  def full_name
    # binding.pry
    self.first_name + " " + self.last_name
  end

  def list_roles
    characters.map {|c| c.name}.first + " - " + shows.map{|s| s.name}.first
  end
end
