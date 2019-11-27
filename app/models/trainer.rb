class Trainer < ApplicationRecord
  validates_presence_of :trainer_name, :email
  validates :team, inclusion: {in: %w(Blue Red Yellow)}
end
