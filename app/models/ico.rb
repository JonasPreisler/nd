class Ico < ApplicationRecord
  mount_uploader :logo, LogoUploader
  ratyrate_rateable "usability", "team"

end
