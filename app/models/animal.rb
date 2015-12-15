class Animal < ActiveRecord::Base
  belongs_to :user
  has_many :report

  enum role: [:cow, :goat, :chicken]
end
