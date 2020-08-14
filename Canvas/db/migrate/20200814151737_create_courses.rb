class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :description
      t.string :setting
      t.string :semester
      t.integer :credit
      t.integer :college_id
      t.integer :professor_id

      t.timestamps
    end
  end
end
