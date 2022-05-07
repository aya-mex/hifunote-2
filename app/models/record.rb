class Record < ApplicationRecord
  belongs_to :user
  has_many :record_bodyparts
  has_many :bodyparts, through: :record_bodyparts
  has_many :record_symptoms
  has_many :symptoms, through: :record_symptoms
  has_one_attached :image

  validates :image, :onset_date, :onset_time, :bodypart_ids, :symptom_ids, presence: true
end
