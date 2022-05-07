class Record < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :image, :onset_date, :bodypart, :symptom, presence: true
  validates :onset_time, presence: true,
                         numericality: { only_integer: true, message: 'is invalid. Input half-width characters' },
                         inclusion: { in: 0..23, message: 'is out of setting range' }
end
