class Comment < ApplicationRecord
  belongs_to :post

  validates :author, presence: true, length: { minimum: 4, maximum: 15}
  validates :body, presence: true, length: { minimum: 15, maximum: 60}
end
