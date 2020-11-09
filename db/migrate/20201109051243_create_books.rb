class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string   :title,      null: false
      t.integer  :select_genre_id,  null: false
      t.string   :chapter
      t.text     :note
      t.references :user,     foreign_key: true
      t.timestamps
    end
  end
end
