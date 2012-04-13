class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :content
      t.boolean :replied_to
      t.integer :archive_id

      t.timestamps
    end
    add_index :questions, :replied_to
    add_index :questions, :archive_id
  end
end
