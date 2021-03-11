class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.date :start_on
      t.date :finish_on
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
