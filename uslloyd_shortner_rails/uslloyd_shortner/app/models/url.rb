class Url < ActiveRecord::Base
  attr_accessible :long_url, :short_url, :click_count
  belongs_to :user
  validates :short_url, uniqueness: true
end