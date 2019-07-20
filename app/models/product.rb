class Product < ApplicationRecord
    mount_base64_uploader :image_url, ImagesUploader
    
end
