class User < ApplicationRecord
 
  before_save :assign_role
  belongs_to :role
  has_many :tasks
  validates_presence_of :name


  def assign_role
     self.role = Role.find_by name: "Student" if self.role.nil?
  end

  def lecture?
     self.role.name == "lecture"
  end
  
  def student?
    self.role.name == "student"
  end
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  end
