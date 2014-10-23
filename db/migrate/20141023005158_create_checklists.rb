class CreateChecklists < ActiveRecord::Migration
  def change
    create_table :checklists do |t|
      t.references :event, index: true
      t.string :name
      t.boolean :done?

      t.timestamps
    end
  end
end
