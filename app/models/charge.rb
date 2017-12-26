class Charge < ApplicationRecord
  belongs_to :user
  belongs_to :debtor, class_name: 'User'
  belongs_to :card
end
