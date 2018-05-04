class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.integer :user_id
      t.integer :cohort_id
      t.date :birthday
      t.string :education

      t.timestamps
    end
  end
end
