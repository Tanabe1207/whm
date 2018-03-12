class CreateUserLanguages < ActiveRecord::Migration[5.1]
  def change
    create_table :user_languages do |t|

      t.string :level1
      t.string :level2
      t.string :level3
      t.string :level4
      t.string :level5

      # t.string :"全く話せない"
      # t.string :"片言でなんとか"
      # t.string :"日常会話レベル"
      # t.string :"ビジネスで使っている"
      # t.string :"ネイティブ"
      t.timestamps
    end
  end
end
