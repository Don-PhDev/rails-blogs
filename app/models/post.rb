class Post < ApplicationRecord
  validates :title, :body, presence: true

  belongs_to :user

  has_many_attached :images
  has_many :comments, dependent: :destroy

  scope :by_recently_updated, -> { order(updated_at: :desc) }

  def has_image?
    images.attached?
  end
end
