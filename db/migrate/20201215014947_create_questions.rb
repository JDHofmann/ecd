class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :text
      t.string :category
      t.integer :required_yes_id
      t.timestamps
    end
  end
end
