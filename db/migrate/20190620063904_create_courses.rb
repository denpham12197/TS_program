class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.references :Course_categorie, foreign_key: true
      t.string :name
      t.string :detail
      t.date :start_date
      t.string :end_date
      t.string :date

      t.timestamps
    end
  end
end
