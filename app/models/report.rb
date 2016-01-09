class Report < ActiveRecord::Base
	belongs_to :animal
	belongs_to :user

  	enum role: [:animal_report, :feedback]


  	has_attached_file :image, styles: { medium: "1600x900>", thumb: "160x90>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end
