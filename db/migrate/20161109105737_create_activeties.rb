class CreateActiveties < ActiveRecord::Migration[5.0]
  def change
    create_table :activeties do |t|
      t.string :name
      t.references :skill, foreign_key: true

      t.timestamps
    end
  end
end
