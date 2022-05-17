class Record < ApplicationRecord
  belongs_to :user
  has_many_attached :images
  has_many :comments

  validates :images, :onset_date, :bodypart, :symptom, presence: true
  validates :images, length: { minimum: 1, maximum: 3 }
  validates :onset_time, presence: true,
                         numericality: { only_integer: true, message: 'is invalid. Input half-width characters' },
                         inclusion: { in: 0..23, message: 'is out of setting range' }

  def self.search(search)
    if search != ""
      Record.where('bodypart LIKE(?) OR symptom LIKE(?) OR diagnosis LIKE(?) OR cause LIKE(?) OR prescription_drug LIKE(?) OR memo LIKE(?)', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
    else
      Reocrd.all
    end
  end
end
