class User < ApplicationRecord
 
  before_save :assign_role

  belongs_to :role
  has_many :tasks
  has_many :work


  validates_presence_of :name
  validates_presence_of :email
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,inclusion:{message:"Wrong email format"}
  validates_presence_of :password
  validates_presence_of :password_confirmation
  validates_presence_of :role_id
  

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
