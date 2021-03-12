class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

  has_person_name
  has_one_attached :avatar

  extend FriendlyId
  friendly_id :name, use: :slugged
end
