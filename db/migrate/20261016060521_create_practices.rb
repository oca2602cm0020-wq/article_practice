class CreatePractices < ActiveRecord::Migration[8.1]
  def change
    create_table :practices do |t|
      t.string :title, null: false
      t.text :content
      t.timestamps
    end
  end
end
