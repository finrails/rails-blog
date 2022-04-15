class Post < ApplicationRecord
  has_many :comments

  validates :author, presence: true, length: { minimum: 4, maximum: 24 }
  validates :title, presence: true, length: { minimum: 10, maximum: 30 }
  validates :body, presence: true, length: { minimum: 10, maximum: 200 }
end
