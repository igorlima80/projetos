class BankAccount < ApplicationRecord
  belongs_to :bank
  belongs_to :accountable, polymorphic: true
  
end
