class RecordBodypart < ApplicationRecord
  belongs_to :record
  belongs_to :bodypart
end
