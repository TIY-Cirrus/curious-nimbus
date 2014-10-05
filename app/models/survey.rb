class Survey < ActiveRecord::Base
  belongs_to :user
  has_many :guesses, through: :user
  serialize :choices, Array
  has_attached_file :picture
  do_not_validate_attachment_file_type :picture
  validates :picture,  attachment_presence: true
end
