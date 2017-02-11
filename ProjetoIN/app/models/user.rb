class User < ApplicationRecord
    has_secure_password
    has_many :article
    has_many :question
    has_many :comment
end
