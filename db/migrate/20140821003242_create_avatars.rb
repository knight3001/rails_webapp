class CreateAvatars < ActiveRecord::Migration
  def change
    create_table :avatars do |t|
      t.references :user, index: true
      t.string :title
      t.text :description
      t.string :picture

      t.timestamps
    end
  end
end
