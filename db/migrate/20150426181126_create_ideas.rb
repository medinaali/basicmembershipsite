class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :title
      t.text :idea_description
      t.text :skill_description
      t.integer :user_id
      t.integer :platform_id
      
      t.timestamps null: false
    end
  end
end
