class User < ActiveRecord::Base

  has_secure_password

  before_save { self.email = email.downcase }

  validates :name, :email, presence: true

  validates :password, length: { minimum: 6 }

  has_many :created_movies, foreign_key: 'creator_id', class_name: 'Movie'

  has_many :reviewed_movies, foreign_key: 'reviewer_id', :through => 'Review'

  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

end
