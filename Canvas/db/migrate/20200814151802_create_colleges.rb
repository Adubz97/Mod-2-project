class CreateColleges < ActiveRecord::Migration[6.0]
  def change
    create_table :colleges do |t|
      t.string :name
      t.integer :rating
      t.integer :university_id

      t.timestamps
    end
  end
end
