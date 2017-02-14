class User < ApplicationRecord
    validates :name, :presence => true
    validates :email, :presence => true
    validates :password, :presence => true
    has_secure_password
    has_many :articles
    has_many :questions
    has_many :answers, through: :questions
    has_many :comments, through: :articles
end