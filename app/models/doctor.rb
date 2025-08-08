class Doctor < ActiveRecord::Base
  # Association
  has_many :interns
  has_many :consultations
  has_many :patients, through: :consultations

  # Validation
  validates :last_name, presence: true
  validates :first_name, uniqueness: { scope: :last_name }
end
