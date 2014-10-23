class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :checklist, index: true
      t.string :name

      t.timestamps
    end
  end
end
