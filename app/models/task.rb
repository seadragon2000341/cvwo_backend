class Task < ApplicationRecord
    validates :name, presence: true
  validates :description, presence: true
  validates :date, presence: true
  validates_inclusion_of :completed, in: [true, false]
 
 
end
