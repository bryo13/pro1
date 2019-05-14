class Task < ApplicationRecord
  belongs_to :user
  belongs_to :notassignment
  has_many :works
  has_many_attached :attaches
  WillPaginate.per_page = 7

  def self.search(search)
   where("unit_name LIKE ? OR unit_code LIKE ? OR semester LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
  end
  
  validates :attaches, presence: true 
  validates :unit_code, presence: true
  validates :unit_name, presence: true
  validates :semester, presence: true
  validates :semester, numericality: { greater_than: 0 }
  validates :semester, numericality: { less_than: 3 }
  
end
