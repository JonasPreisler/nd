class Ico < ApplicationRecord
  mount_uploader :logo, LogoUploader
  ratyrate_rateable "usability", "team"
  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]
end
