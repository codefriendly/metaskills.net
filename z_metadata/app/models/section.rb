class Section < ActiveRecord::Base
  
  has_many :assigned_sections
  has_many :articles, :order => 'position', :through => :assigned_sections
  
  
end
