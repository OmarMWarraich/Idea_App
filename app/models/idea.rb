class Idea < ApplicationRecord
    has_many :comments, dependent: :destroy

    validates :name, presence: true, length: { minimum: 3, maximum: 100 }

    mount_uploader :picture, PictureUploader
end
