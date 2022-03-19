class Post < ApplicationRecord
  validates :title, :body, presence: true

  has_many_attached :images

  belongs_to :user

  scope :by_recently_updated, -> { order(updated_at: :desc) }

  def has_image?
    images.attached?
  end
end
