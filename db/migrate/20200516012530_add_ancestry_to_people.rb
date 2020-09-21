class AddAncestryToPeople < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :ancestry, :string
    add_index :people, :ancestry
  end
end
