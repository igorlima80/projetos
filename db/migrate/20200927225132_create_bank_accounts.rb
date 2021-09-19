class CreateBankAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :bank_accounts do |t|
      t.string :agency
      t.string :number_account
      t.string :operation
      t.references :bank, null: false, foreign_key: true
      t.references :accountable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
