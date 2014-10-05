class Survey < ActiveRecord::Base
  attr_accessor :image_file_name
  belongs_to :user
  has_many :guesses, through: :user
  serialize :choices, Array
  has_attached_file :image
  do_not_validate_attachment_file_type :image
  validates :image,  attachment_presence: true
end
