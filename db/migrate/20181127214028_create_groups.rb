class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :type
      t.datetime :created
      t.string :name
      t.string :picture
      t.string :description

      t.timestamps
    end
  end
end
