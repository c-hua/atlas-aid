class CreateVitals < ActiveRecord::Migration
  def change
    create_table :vitals do |t|
      t.integer :heart_rate
      t.datetime :date
      t.integer :blood_pressure
      t.integer :respiratory_rate
      t.integer :temperature
      t.integer :red_blood_cell
      t.integer :white_blood_cell
      t.integer :chemo_date
      t.string :chemo_type

      t.timestamps
    end
  end
end
