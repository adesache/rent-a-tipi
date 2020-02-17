class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  validates :first_name, :last_name, :email, presence: true
  validates_uniqueness_of :first_name, :scope => [:last_name]
  has_one_attached :photo
end
