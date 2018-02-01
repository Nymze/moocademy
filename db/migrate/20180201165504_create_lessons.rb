class CreateLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.string :titre
      t.string :body

      t.timestamps
    end
  end
end
