class UserLanguage < ApplicationRecord
  
  has_many :user_id
  has_many :language_id

end
