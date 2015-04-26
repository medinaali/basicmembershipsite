class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :title
      t.text :idea_description
      t.text :skill_description

      t.timestamps null: false
    end
  end
end
