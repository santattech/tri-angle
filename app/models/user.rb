class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :first_name, :last_name

  validates :email, presence: true

  has_many :user_roles
  has_many :roles, through: :user_roles

  def admin?
    roles.include?(Role.admin)
  end
end
