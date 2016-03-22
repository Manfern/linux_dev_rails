class Post < ActiveRecord::Base
	validates :title, presence: true
	validates :content, presence: true
	
	has_attached_file :image, styles: { large:"415x230",medium: "200x200#",small: "175x175#" ,thumb: "112x112#" }, default_url: "/images/:style/default.png"
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
