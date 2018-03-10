class CreateLanguages < ActiveRecord::Migration[5.1]
  def change
    create_table :languages do |t|
      t.string :English
      t.string :Japanese
      t.string :Korean
      t.string :"北京語"
      t.string :"広東語"
      t.string :French

      t.timestamps
    end
  end
end
