class CreateLabTemplates < ActiveRecord::Migration
  def change
    create_table :lab_templates do |t|
      t.string :name

      t.timestamps
    end
  end
end
