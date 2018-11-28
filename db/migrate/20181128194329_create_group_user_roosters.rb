class CreateGroupUserRoosters < ActiveRecord::Migration[5.2]
  def change
    create_table :group_user_roosters do |t|
      t.references :user, foreign_key: true
      t.boolean :isadmin
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end
