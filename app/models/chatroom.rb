class Chatroom < ApplicationRecord
  has_many :messages
  has_one_attached :photo
  validates :name, presence: true, uniqueness: true
end
