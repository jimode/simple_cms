class Subject < ActiveRecord::Base
  #attr_accessible :name, :position, :visible

  has_many :pages

  validates_presence_of :name

  scope :visible, where(visible: true)
  scope :invisible, where(visible: false)
  scope :search, lambda {|query| where(["name LIKE ?", "%#{query}%"])}

  #this scope works as well
  # def self.visible
  # 	where(visible: true)
  # end
end
