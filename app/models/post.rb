class Post < ApplicationRecord
  belongs_to :angler
  has_one_attached :image
  acts_as_taggable
end
