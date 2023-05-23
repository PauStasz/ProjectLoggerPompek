class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :pumpups

  validates :name, presence: true, length: { minimum: 3 }, format: { with: /\A[a-zA-Z]+\z/, message: "tylko dozwolone są litery" }
  validates :surname, presence: true, length: { minimum: 3 }, format: { with: /\A[a-zA-Z]+\z/, message: "tylko dozwolone są litery" }
  validates :nick, presence: true, length: { minimum: 3 }, confirmation: { case_sensitive: true }
  validates :age, presence: true, inclusion: { in: 11..100 }, numericality: { only_integer: true }
end
