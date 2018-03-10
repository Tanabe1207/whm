class User < ApplicationRecord
  validates :nickname, presence: true
  validates :mail, presence: true
  validates :gender
  numericality :age
  validates :nationality

  has_many :languages
  has_many :user_languages, through: :user_id, source: 'language'
  #なんか違う
  has_many :offers
  has_many :favorites
#  has_many :favorite_users, through: :

end
