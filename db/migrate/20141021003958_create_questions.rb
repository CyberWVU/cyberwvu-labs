class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :name
      t.references :lab_template, index: true

      t.timestamps
    end
  end
end
