class CreateCurrentVitals < ActiveRecord::Migration
  def change
    create_table :current_vitals do |t|
      t.string :current_interventions
      t.string :status
      t.datetime :dosage_dates
      t.string :surgeries
      t.boolean :eligibility_clinical

      t.timestamps
    end
  end
end
