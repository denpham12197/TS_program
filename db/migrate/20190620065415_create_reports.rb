class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.references :User, foreign_key: true
      t.string :title
      t.string :content
      t.date :date_create

      t.timestamps
    end
  end
end
