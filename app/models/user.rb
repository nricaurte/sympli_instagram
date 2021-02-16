class User < ApplicationRecord
  searchkick
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :lockable, :timeoutable, :trackable

  has_one_attached :picture
  validates :phone, :email, :username, presence: true
  has_many :posts
  has_many :likes

  has_many :user_follower, class_name: "Follower", foreign_key: "user_id"
  has_many :follower_user_follower, class_name: "Follower", foreign_key: "follower_user_id"

  def name
    email
  end

end
