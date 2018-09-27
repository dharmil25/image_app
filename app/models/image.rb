class Image < ApplicationRecord
  belongs_to :album
  validates_associated :album
  default_scope -> { order(created_at: :desc) }
  mount_uploader :picture, PictureUploader
  validates :album_id, presence: true
  validates :tagline, presence: true, length: { maximum: 50 }
  validates :picture, presence: true
  validate  :picture_size

  private

  # Validates the size of an uploaded picture.
  def picture_size
    if picture.size > 5.megabytes
      errors.add(:picture, "should be less than 5MB")
    end
  end

end
