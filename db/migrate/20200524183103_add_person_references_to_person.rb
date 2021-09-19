class AddPersonReferencesToPerson < ActiveRecord::Migration[6.0]
  def change
    add_reference :people, :person, foreign_key: true
  end
end
