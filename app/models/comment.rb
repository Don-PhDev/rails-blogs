class Comment < ApplicationRecord
  include ActionView::Helpers::DateHelper

  belongs_to :post
  belongs_to :user
  belongs_to :parent, class_name: "Comment", optional: true

  has_many :comments, foreign_key: :parent_id

  validates :content, presence: true

  def commented_time_ago
    if self.updated_at - self.created_at > 1
      "edited " + time_ago_in_words(self.updated_at) + " ago"
    else
      # "created " + distance_of_time_in_words(Time.now, self.created_at.to_time) + " ago"
      time_ago_in_words(self.created_at) + " ago"
    end
  end
end
