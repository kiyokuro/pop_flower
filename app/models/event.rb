class Event < ApplicationRecord
  has_many :flowers,  dependent: :destroy

  # @event.votes_upでvotes_numが１上昇します
  def votes_up
    self.flowers += 1
  end
end
