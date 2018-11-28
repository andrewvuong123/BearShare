class Post < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :nullify
  has_many :users_liked, through: :likes, source: :user, dependent: :nullify
end
