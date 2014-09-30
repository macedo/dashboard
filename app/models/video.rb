class Video < ActiveRecord::Base
  validates :source, presence: true
end
