class Organization < ApplicationRecord
  has_many :organization_accesses, dependent: :destroy
  has_many :users, through: :organization_accesses, source: :user_id
  has_many :boards, dependent: :destroy
  has_many :board_accesses
end
