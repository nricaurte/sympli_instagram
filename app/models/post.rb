class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :picture
  #validates :picture, presence: true, content_type: ['image/png', 'image/jpg', 'image/jpeg']
  #validates_presence_of :picture, :message => "choose the file, dummy!"

  validates :user, :picture, presence: true
  validate :check_for_at_least_image

  def check_for_at_least_image
    #errors.add(:picture, "select at least one")
  end


  has_many :comments
  has_many :likes
end
