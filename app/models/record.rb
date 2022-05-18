class Record < ApplicationRecord
  belongs_to :user
  has_many_attached :images
  has_many :comments

  validates :images, :onset_date, :bodypart, :symptom, presence: true
  validates :images, length: { minimum: 1, maximum: 3, message: 'は1枚以上3枚以下にしてください' }
  validates :onset_time, presence: true,
                         numericality: { only_integer: true, message: 'は半角数字で入力してください' },
                         inclusion: { in: 0..23, message: 'は0〜23で入力してください' }

  def self.search(search)
    if search != ""
      Record.where('bodypart LIKE(?) OR symptom LIKE(?) OR diagnosis LIKE(?) OR cause LIKE(?) OR prescription_drug LIKE(?) OR memo LIKE(?)', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
    else
      Record.all
    end
  end
end
