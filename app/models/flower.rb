class Flower < ApplicationRecord
  belongs_to :event

  # @flower.votes_upでvotes_numが１上昇します
  def votes_up
    # self.
  end
end
