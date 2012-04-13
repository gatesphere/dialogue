class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :content
      t.boolean :replied_to

      t.timestamps
    end
    add_index :questions, :replied_to
  end
end
