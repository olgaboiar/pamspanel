class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :title
      t.integer :hours
      t.string :description
      t.string :picture
      t.timestamps
    end
  end
end
