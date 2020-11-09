class AddBookIdToComment < ActiveRecord::Migration[6.0]
  def change
    add_reference :comments, :book, null: false, foreign_key: true
  end
end
