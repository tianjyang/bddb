class Image < ActiveRecord::Base
  has_many :dbags
  has_attached_file :dpic, styles: {avatar: "200x200"}
  ## validates_attachment_content_type :dpic, content_type: /\Aimage\/.*\Z/
end
