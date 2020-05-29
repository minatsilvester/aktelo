class User < ApplicationRecord
  has_many :organization_accesses, dependent: :destroy
  has_many :organizations, :through => :organization_accesses
  has_many :boards_accesses, dependent: :destroy
  has_many :boards, :through => :board_accesses
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
