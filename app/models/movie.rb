class Movie < ApplicationRecord
    searchkick
	belongs_to :user
  has_attached_file :image,styles: { medium: "400x600#"}, default_url: "/images/:style/missing.png"#Gem paperclip
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
