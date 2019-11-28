class Friendship < ApplicationRecord
  belongs_to :trainer
  belongs_to :friend, class_name: "Trainer"
end
