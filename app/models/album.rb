class Album < ApplicationRecord
  belongs_to :creator, class_name: "User", foreign_key: :creator_id
  has_many :album_entries, dependent: :destroy_async
end
