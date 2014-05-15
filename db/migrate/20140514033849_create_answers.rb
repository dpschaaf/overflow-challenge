class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :body
      t.reference :answerable, polymorphic: true
      t.timestamps
    end
  end
end
