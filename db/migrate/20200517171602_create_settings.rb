class CreateSettings < ActiveRecord::Migration[6.0]
  def change
    create_table :settings do |t|
      t.monetize :fee_with_service
      t.monetize :fee_without_service
      t.integer :percentage_net_value_total

      t.timestamps
    end
  end
end
