class Album < ApplicationRecord
  belongs_to :user
  has_many :images, dependent: :destroy
  validates_length_of :images, maximum: 25
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :name, presence: true, length: { maximum: 50 }
end
