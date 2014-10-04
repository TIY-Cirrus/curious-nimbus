class Survey < ActiveRecord::Base
  belongs_to :user
  has_many :guesses, through: :user
  serialize :choices, Array
  has_attached_file :image_url
end
