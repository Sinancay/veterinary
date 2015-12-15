class Report < ActiveRecord::Base
	belongs_to :animal

  	enum role: [:animal_report, :feedback]

end
