class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  has_many :airs
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
   has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "picture.jpg"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
