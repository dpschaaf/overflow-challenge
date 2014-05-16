class AddAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :body
      t.integer :answerable_id
      t.string :answerable_type
      t.timestamps
    end
  end
end
