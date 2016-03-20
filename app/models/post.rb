class Post < ActiveRecord::Base
	has_attached_file :image, styles: { large:"415x230",medium: "200x200#", thumb: "135x135#" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
