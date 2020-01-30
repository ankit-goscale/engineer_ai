class TvShow < ApplicationRecord
  # => Associations
  belongs_to :tv_channel
  
  # => Validations
  validates_presence_of :name, :start_time, :end_time
end
