class CreateCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|
      t.string :name
      t.string :type
      t.string :schedule
      t.string :classroom
      t.integer :course_id
      t.date :start_date
      t.date :end_date
      t.integer :instructor_id
      t.string :picture
      t.timestamps
    end
  end
end
