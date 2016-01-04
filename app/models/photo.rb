class Photo < ActiveRecord::Base
  belongs_to :post
  mount_uploader :file_name, PhotoUploader 
end
