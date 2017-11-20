class Event < ApplicationRecord
  has_many :flowers,  dependent: :destroy
end
