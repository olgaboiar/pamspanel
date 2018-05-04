class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :cohorts, :type, :class_type
  end
end
