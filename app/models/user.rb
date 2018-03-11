class User < ApplicationRecord
  validates :nickname, uniqueness: true
  validates :mail, uniqueness: true
  validates :gender, acceptance: true
  validates :age, numericality: true
  validates :nationality, presence: true

  has_many :languages
  has_many :user_languages, through: :user_id, source: 'language'
  #なんか違う
  has_many :offers
  has_many :favorites
#  has_many :favorite_users, through: :

end
