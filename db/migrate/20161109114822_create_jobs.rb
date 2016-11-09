class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :company
      t.date :start_date
      t.date :end_date
      t.string :link
      t.string :position

      t.timestamps
    end
  end
end
