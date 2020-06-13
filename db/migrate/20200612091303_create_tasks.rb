class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.text :contents, null: false
      t.string :image
      # t.references :tag, foreign_key: true 
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
