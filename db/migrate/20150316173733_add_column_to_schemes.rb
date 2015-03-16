class AddColumnToSchemes < ActiveRecord::Migration
  def change
    add_column :schemes, :idea_id, :integer
  end
end
