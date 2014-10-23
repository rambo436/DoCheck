class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.references :user, index: true
      t.string :title
      t.boolean :done?

      t.timestamps
    end
  end
end
