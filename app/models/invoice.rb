class Invoice < ApplicationRecord
  belongs_to :company
  has_many :statements
end
