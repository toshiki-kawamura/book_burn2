class ChangePrototypesToBooks < ActiveRecord::Migration[6.0]
  def change
    rename_table :prototypes, :books
  end
end
