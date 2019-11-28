class Friendship < ApplicationRecord
  after_create :create_inverse_relationship
  after_destroy :destroy_inverse_relationship

  belongs_to :trainer
  belongs_to :friend, class_name: "Trainer"
  private
  
  def create_inverse_relationship
    friend.friendships.create(friend: trainer)
  end

  def destroy_inverse_relationship
    friendship = friend.friendships.find_by(friend: trainer)
    friendship.destroy if friendship
  end
end
