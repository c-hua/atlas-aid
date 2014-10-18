class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :labs
      t.string :pathology
      t.string :notes


      t.timestamps
    end
  end
end
