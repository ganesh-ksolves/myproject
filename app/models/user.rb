class User < ApplicationRecord
       has_many :comments 
       has_many :articles 
       
       mount_uploader :profile_pic, ImageUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, presence: true ,uniqueness: true
  validates :username, presence: true ,uniqueness: true

  validates :email, :format => {:with => /\A([\w])(.+)@(.+)\z/i,
                   message: "email shouldn't contain special characters."}

  validates :username, :format => {:with => /\A\w+\z/i,
                   message: "email shouldn't contain special characters."}
end
