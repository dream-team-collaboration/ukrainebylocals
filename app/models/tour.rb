class Tour < ApplicationRecord
  has_many :reservations
  mount_uploaders :photos, PhotoUploader
end
