class AddActiveFieldsToJobsAndEducations < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :current, :boolean
    add_column :educations, :current, :boolean
  end
end
