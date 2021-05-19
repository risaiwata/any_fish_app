class Blog < ApplicationRecord
  belongs_to :agent
  has_one_attached :image
end
