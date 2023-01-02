class Idea < ApplicationRecord
    has_many :comments, dependent: :destroy

    mount_uploader :picture, PictureUploader
end
