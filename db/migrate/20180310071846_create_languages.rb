class CreateLanguages < ActiveRecord::Migration[5.1]
  def change
    create_table :languages do |t|
      t.string :English
      t.string :Japanese
      t.string :Korean
      t.string :Chinese
      t.string :French

      t.timestamps
    end
  end
end
