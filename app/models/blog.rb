class Blog < ApplicationRecord
  validates :title, :body, presence: true

  has_one_attached :image

  scope :by_recently_updated, -> { order(updated_at: :desc) }

  def has_image?
    image.attached?
  end
end
