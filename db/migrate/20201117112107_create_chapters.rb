class CreateChapters < ActiveRecord::Migration[6.0]
  def change
    create_table :chapters do |t|
      t.text       :chapter
      t.references :book, foreign_key: true
      t.timestamps
    end
  end
end
