class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :user_name
      t.text :body
      t.integer :idea_id

      t.timestamps
    end
  end
end
