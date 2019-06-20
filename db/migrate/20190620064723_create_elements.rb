class CreateElements < ActiveRecord::Migration[5.2]
  def change
    create_table :elements do |t|
      t.string :name
      t.references :Course, foreign_key: true
      t.references :User, foreign_key: true

      t.timestamps
    end
  end
end
