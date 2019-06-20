class CreateCourseSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :course_subjects do |t|
      t.references :Course, foreign_key: true
      t.references :Subject, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
