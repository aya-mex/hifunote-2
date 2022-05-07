class Bodypart < ApplicationRecord
  has_many :record_bodyparts
  has_many :records, through: :record_bodyparts
end
