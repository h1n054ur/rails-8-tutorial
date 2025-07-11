class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, presence: true, uniqueness: true
  validates :admin, inclusion: { in: [true, false] }
  
  has_many :articles, dependent: :destroy
  
  scope :admins, -> { where(admin: true) }
  scope :regular_users, -> { where(admin: false) }
  
  def admin?
    admin
  end
  
  def make_admin!
    update!(admin: true)
  end
  
  def remove_admin!
    update!(admin: false)
  end
end
