class InvoiceJob
    def perform(*args)
        Account.all.each do |account|
            account.invoice_generate
        end      
    end
end