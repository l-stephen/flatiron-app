class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.string :course

      t.timestamps
    end
  end
end
