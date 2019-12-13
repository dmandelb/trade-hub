class Trainer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates_presence_of :trainer_name, :email
  validates :team, inclusion: {in: %w(Blue Red Yellow)}
  has_many :friendships
  has_many :inverse_friendships, foreign_key: :friend_id
  has)_many :friends, through: :friendships
end
