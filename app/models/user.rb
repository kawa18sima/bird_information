class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  attr_accessor :login

  validates :name,
  uniqueness: { case_sensitive: :false },
  length: { minimum: 4, maximum: 20 }

  has_many :articles
end
