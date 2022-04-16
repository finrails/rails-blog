class Comment < ApplicationRecord
  belongs_to :post

  validates :author, presence: true, length: { minimum: 4, maximum: 20}
  validates :body, presence: true, length: { minimum: 5, maximum: 120}
end
