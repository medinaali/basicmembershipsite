class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :name
      t.integer :idea_id
      t.boolean :filled, default: false

      t.timestamps null: false
    end
  end
end
