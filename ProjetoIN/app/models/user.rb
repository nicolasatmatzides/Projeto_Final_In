class User < ApplicationRecord
    VALID_EMAIL_REGEX = /\A[a-zA-Z]{1,20}\.[a-zA-Z]{1,20}@injunior.com.br
    validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
    has_secure_password
end
