class CreateTasklists < ActiveRecord::Migration
  def change
    create_table :tasklists do |t|
      t.string :name
      t.string :category
      t.boolean :is_completed
      t.date :date_todo

      t.timestamps
    end
  end
end
