class AddComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    t.string :body
    t.integer :commentable_id
    t.string :commentable_type
    t.timestamps
  end
end
