class RemoveUserIdFromInstructors < ActiveRecord::Migration[5.2]
  def change
    remove_column :instructors, :user_id, :integer
  end
end
