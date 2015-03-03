class Instrument < ActiveRecord::Base
  validates :name, :group, :price, presence: true
end
