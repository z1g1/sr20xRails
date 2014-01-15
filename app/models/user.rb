class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	
	## added by https://tutorials.railsapps.org/tutorials/rails3-bootstrap-devise-cancan#authentication but 
	## the turorial seemed to fall apart here
	#validates_presence_of :name
	#validates_uniqueness_of :name, :email, :case_sensitive => false
	#attr_accessible :name, :email, :password, :password_confirmation, :remember_me

end
