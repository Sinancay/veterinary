class User < ActiveRecord::Base
  enum role: [:veterinary, :barner, :admin]
  after_initialize :set_default_role, :if => :new_record?


  validates :username,
  :presence => true,
  :uniqueness => {
    :case_sensitive => true
  }


  def set_default_role
    self.role ||= :admin
  end


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable,
         :authentication_keys => [:username]


  has_many :animal

end