class Tour < ApplicationRecord
  has_many :reservations
  has_many  :tour_options
  mount_uploaders :photos, PhotoUploader
  accepts_nested_attributes_for :tour_options
end
