class Record < ApplicationRecord
  belongs_to :user
  has_many_attached :images
  has_many :comments

  validates :images, :onset_date, :bodypart, :symptom, presence: true
  validates :onset_time, presence: true,
                         numericality: { only_integer: true, message: 'is invalid. Input half-width characters' },
                         inclusion: { in: 0..23, message: 'is out of setting range' }
end
