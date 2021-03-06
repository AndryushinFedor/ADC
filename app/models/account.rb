class Account < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    TYPE = %i[user company]
    mount_uploader :image, ImageUploader
    has_one :company
    has_one :user
end
