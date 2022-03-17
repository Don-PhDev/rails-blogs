class Blog < ApplicationRecord
  validates :title, :body, presence: true

  scope :by_recently_updated, -> { order(updated_at: :desc) }
end
