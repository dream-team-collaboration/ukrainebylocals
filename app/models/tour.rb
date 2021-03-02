class Tour < ApplicationRecord
    mount_uploaders :photos, PhotoUploader
end
