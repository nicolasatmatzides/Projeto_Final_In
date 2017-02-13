class Article < ApplicationRecord
    belongs_to :user
    has_many :comments, dependent: :destroy
    validates :title, :presence => true
    validates :content, :presence => true
    validates :tags, :presence => true
    paginates_per 5

end