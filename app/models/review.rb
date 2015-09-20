class Review < ActiveRecord::Base

  validates :rating, :content, presence: true

  validates :content, length: { minimum: 6 }

  belongs_to :movie

  belongs_to :reviewer, class_name: 'User'

  # scope :recent, -> { order(created_at: :desc) }

end
