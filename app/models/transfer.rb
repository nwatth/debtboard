class Transfer < ApplicationRecord
  belongs_to :user
  belongs_to :collector, class_name: 'User'
end
