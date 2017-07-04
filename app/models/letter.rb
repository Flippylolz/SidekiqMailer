class Letter < ApplicationRecord
  scope :inverse, (-> { order('id DESC') })

  validates :email, :name, presence: true
end
