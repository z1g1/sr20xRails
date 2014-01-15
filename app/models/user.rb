class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	
	# Attempted to add the lines below but was warned by rails
	# `attr_accessible` is extracted out of Rails into a gem. Please use new recommended protection model for params(strong_parameters) or add `protected_attributes` to your Gemfile to use old one.
	# Setup accessible (or protected) attributes for your model
	#attr_accessible :role_ids, :as => :admin
	#attr_accessible :name, :email, :password, :password_confirmation, :remember_me
	before_create :assign_role

  def assign_role
    # assign a default role if no role is assigned
    self.add_role :user if self.roles.first.nil?
  end
end
