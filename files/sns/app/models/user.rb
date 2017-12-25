class User < ApplicationRecord
  has_many :feed
  has_many :friends_from, :class_name => 'Friend', :foreign_key => 'from_user_id', :dependent => :destroy
  has_many :friends_to, :class_name => 'Friend', :foreign_key => 'to_user_id', :dependent => :destroy
  has_many :friends_from_user, :through => :friends_from, :source => 'to_user'
  has_many :friends_to_user, :through => :friends_to, :source => 'from_user'

  validates :login_id, presence: true, length: {maximum: 20}, format: {with: /\A[\x20-\x7f]+\z/}, uniqueness: true 
  validates :name, presence: true, length: {maximum: 20}
  validates :pass, presence: true

  before_create :hash_password
  def hash_password
    self.pass = Digest::SHA256.hexdigest self.pass
  end
end
