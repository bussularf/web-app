class Chatroom < ApplicationRecord
  has_many :messages, dependent: :destroy
  has_one_attached :photo
  validates :name, presence: true, uniqueness: true
end
