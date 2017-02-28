class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post, counter_cache: :count_of_comments
  validates :body, presence: true

end
