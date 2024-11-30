class User < ApplicationRecord
  validates :name, presence: true
  validates :age, numericality: { only_integer: true }, allow_nil: true
end
