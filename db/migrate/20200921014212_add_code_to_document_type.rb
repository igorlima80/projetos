class AddCodeToDocumentType < ActiveRecord::Migration[6.0]
  def change
    add_column :document_types, :code, :string
  end
end
