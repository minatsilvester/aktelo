class BoardsAccess < ApplicationRecord
  belongs_to :user
  belongs_to :board
  belongs_to :organization
end
