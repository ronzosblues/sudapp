class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  has_many :comment_photos, :dependent => :destroy

  has_many :comment_posts, :dependent => :destroy
  
  has_many :pedidos, :dependent => :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable


        validates :username, :presence => true
        validates :username, :uniqueness => true
        validates :username, length: { maximum: 16 }
        validates :username, length: { minimum: 3 }
        validates :password, length: { maximum: 25 }
        validates :password, length: { minimum: 6 }


end
