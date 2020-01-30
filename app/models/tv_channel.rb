class TvChannel < ApplicationRecord
  # => Associations
  has_many :tv_shows
  
  # => Validations
  validates_presence_of :name
end
