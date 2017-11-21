class Flower < ApplicationRecord
  belongs_to :event

  # @flower.votes_upでvotes_numが１上昇します
  def votes_up
    current_num = self.votes_num
    self.update(votes_num: self.votes_num + 1)
  end
end
