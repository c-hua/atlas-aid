class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :doctor_id
      t.datetime :date

      t.timestamps
    end
  end
end
