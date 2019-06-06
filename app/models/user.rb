class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :clients
  has_many :opportunities
  has_many :quotations, through: :opportunities
  has_many :business_proposals, through: :quotations

  mount_uploader :avatar, PhotoUploader
end
