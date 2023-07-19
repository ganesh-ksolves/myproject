class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, presence: true ,uniqueness: true

  validates :email, :format => {:with => /\A([\w])(.+)@(.+)\z/i,
                   message: "email shouldn't contain special characters."}
end
