class Skill < ApplicationRecord
  has_many :activeties, dependent: :destroy
end
