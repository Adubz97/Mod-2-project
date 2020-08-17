class CreateProfessors < ActiveRecord::Migration[6.0]
  def change
    create_table :professors do |t|
      t.string :name
      t.string :subject
      t.string :review
      t.string :username

      t.timestamps
    end
  end
end
