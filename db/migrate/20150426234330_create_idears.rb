class CreateIdears < ActiveRecord::Migration
  def change
    create_table :idears do |t|
      t.integer :role_id
      t.integer :user_id
      t.integer :idea_id
      t.boolean :filled, default: false

      t.timestamps null: false
    end
  end
end
