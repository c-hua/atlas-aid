class CreateRecomendations < ActiveRecord::Migration
  def change
    create_table :recomendations do |t|
      t.integer :doctor_id
      t.string :comment

      t.timestamps
    end
  end
end
