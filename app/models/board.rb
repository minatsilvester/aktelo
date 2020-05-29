class Board < ApplicationRecord
  belongs_to :organization
  has_many :boards_accesses, dependent: :destroy
  has_many :users, :through => :boards_accesses
end
