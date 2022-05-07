class Symptom < ApplicationRecord
  has_many :record_symptoms
  has_many :records, through: :record_symptoms
end
