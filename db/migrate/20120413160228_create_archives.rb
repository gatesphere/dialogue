class CreateArchives < ActiveRecord::Migration
  def change
    create_table :archives do |t|
      t.boolean :complete

      t.timestamps
    end
    add_index :archives, :complete
  end
end
