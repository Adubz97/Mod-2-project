class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :major
      t.string :username
      t.integer :student_number

      t.timestamps
    end
  end
end
