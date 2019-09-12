class Playlist < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, uniqueness: true
    validates :email, presence: true
end
