class Episode < ApplicationRecord
  belongs_to :podcast
  has_one_attached :media_file
end
