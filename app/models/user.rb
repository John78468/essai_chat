class User < ApplicationRecord
  validate :pseudo, presence: true, uniquesse: true
end
