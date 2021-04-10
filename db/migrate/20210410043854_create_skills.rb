class CreateSkills < ActiveRecord::Migration[6.1]
  def change
    create_table :skills do |t|
      t.string :color
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
