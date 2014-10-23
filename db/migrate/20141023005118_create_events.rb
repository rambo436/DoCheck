class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.references :experience, index: true
      t.string :name
      t.string :description
      t.datetime :due_date

      t.timestamps
    end
  end
end
