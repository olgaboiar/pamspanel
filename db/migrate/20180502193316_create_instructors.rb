class CreateInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.integer :user_id
      t.string :userpic
      t.date :birthday
      t.integer :salary
      t.string :education
      t.timestamps
    end
  end
end
