class Quote < ApplicationRecord
  validates :author, :content, presence: true

  scope :search, -> (name_parameter) { where("author ilike ?", "%#{name_parameter}%") }
end