class User < ApplicationRecord
  attr_accessor :password

  validates :password_hash, presence: true

  before_validation :hash_password!, if: :hash_password?

  has_many :albums, inverse_of: :creator, foreign_key: :creator_id

  def valid_password?
    password_hash == password
  end

  def password_hash
    @_password_hash ||= BCrypt::Password.new(super)
  end

  private

  def hash_password?
    password.present?
  end

  def hash_password!
    self.password_hash = BCrypt::Password.create(password)
  end
end
