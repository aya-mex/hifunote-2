class Record < ApplicationRecord
  belongs_to :user
  has_many :bodyparts
  has_many :symptoms

  validates :image, :onset_date, :bodypart_id, :symptom_id, presence: true
  validates :onset_time, presence: true,
                         numericality: { only_integer: true, message: 'is invalid. Input half-width characters' },
                         inclusion: { in: 0..23, message: 'is out of setting range' }
end
