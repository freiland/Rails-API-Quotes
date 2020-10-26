class Quote < ApplicationRecord
  validates :content, presence: true
  validates :author, presence: true

  scope :search ->(name_parameter) {where("author ilike ?", "%#{name_parameter}%")}
end