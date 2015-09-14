class Review < ActiveRecord::Base

  validates :title, :rating, :description, presence: true

  validates :description, length: { minimum: 6 }

  belongs_to :movie

  belongs_to :reviewer, class_name: 'User'

end
