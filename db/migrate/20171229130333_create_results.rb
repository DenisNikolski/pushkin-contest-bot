class CreateResults < ActiveRecord::Migration[5.1]
  def change
    create_table :results do |t|
      t.string :question
      t.integer :question_id
      t.integer :level
      t.string :answer
      t.timestamps
    end
  end
end
