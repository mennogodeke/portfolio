class CreateEducations < ActiveRecord::Migration[5.0]
  def change
    create_table :educations do |t|
      t.string :name
      t.string :school
      t.string :location
      t.date :start_date
      t.date :end_date
      t.boolean :diploma

      t.timestamps
    end
  end
end
