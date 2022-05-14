class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :validatable, :authentication_keys => [:username]

  has_one :routine

  validates :username, presence: true, uniqueness: true
  validates_format_of :email, :with => /\A\S+@.+\.\S+\z/
  validates :email, presence: true
end
