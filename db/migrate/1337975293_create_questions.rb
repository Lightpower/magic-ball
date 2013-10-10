class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :text,   null: false, default: nil
      t.string :answer, null: false
    end

    add_index :questions, :text
  end
end