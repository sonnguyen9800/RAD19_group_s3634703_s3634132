class Course < ApplicationRecord
  has_and_belongs_to_many :locations
  has_and_belongs_to_many :categories, :join_table => 'courses_categories'
  belongs_to :coordinator, :foreign_key => 'coordinator_id', optional: true
  
  validates :name, presence: true, length: {minimum: 10}
  validates :prerequisite, presence: true, length: {minimum: 10}
  validates :description, presence: true, length: {minimum: 30}
end
