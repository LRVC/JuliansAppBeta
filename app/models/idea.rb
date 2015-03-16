class Idea < ActiveRecord::Base
  validates :description, presence: :true
  has_many :schemes
end
