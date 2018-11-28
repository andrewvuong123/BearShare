class Groups < ActiveRecord::Migration[5.2]
  def change
  	add_column :groups, :isprivate, :boolean
  end
end
