class DocumentedChange < ApplicationRecord
  validates :summary, length: { maximum: 255 }, presence: true
end
