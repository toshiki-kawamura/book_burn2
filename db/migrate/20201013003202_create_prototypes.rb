class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|
      t.string   :title
      t.string   :chapter
      t.text     :note
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
