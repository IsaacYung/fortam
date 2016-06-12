class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :first_name
      t.string :last_name
      t.float :height
      t.string :city
      t.string :work_area
      t.binary :curriculum
      t.string :curriculum_path
      t.integer :age
      t.string :email
      t.string :phone
      t.string :sex

      t.timestamps null: false
    end
  end
end
