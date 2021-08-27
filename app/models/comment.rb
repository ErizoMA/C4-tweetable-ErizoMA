class Comment < ApplicationRecord
  # Associations
  belongs_to :user
  belongs_to :tweet, counter_cache: true
end
