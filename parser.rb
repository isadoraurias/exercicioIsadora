load "conciliation_file.rb"
load "conciliated_transaction.rb"
load "sale_data.rb"
load "acquirer_data.rb"
load "accounting_event.rb"
load "informational_event.rb"

class Parser
  def self.parse(file)
    conciliation_file = nil
    conciliated_transaction = nil

    File.readlines(file).each do |line|
      values = line.split(";")
      if values[0] == "1"
        conciliation_file = ConciliationFile.new(merchant_id: values[1], acquirer_id:values[2], generation_date_time:values[3], start_period:values[4], end_period:values[5], sequential_number:values[6], processing_type_id:values[6], processing_type:values[7], version:values[8])
      end
      if values[0] == "2"
        conciliated_transaction = ConciliatedTransaction.new(conciliation_type_id: values[1], conciliation_type: values[2])
        conciliation_file.conciliated_transactions.push(conciliated_transaction)
      end
      if values[0] == "3"
        sale_data = SaleData.new(transaction_id: values[1], external_id: values[2], branch_id: values[3], affiliation_code: values[4], order_id: values[5], authorization_code: values[6], sale_date: values[7], capture_date: values[8], transaction_amount: values[9], installment_count: values[10], customer_name: values[11], customer_document: values[12], card_number: values[13], tid: values[14], nsu: values[15], payment_method_name: values[16])
        conciliated_transaction.sale_data = sale_data
      end
      if values[0] == "4"
        acquirer_data = AcquirerData.new(transaction_id: values[1], affiliation_code: values[2], summary_number: values[3], card_number: values[4], sale_date: values[5], transaction_gross_amount: values[6], transaction_tax_amount: values[7], transaction_net_amount: values[8], tax: values[9], tid: values[10], nsu: values[11], order_id: values[12], terminal_logic_number: values[13], capture_date: values[14], summary_identifier_number: values[15], installment_count: values[16], authorization_code: values[17], capture_method_id: values[18], capture_method_description: values[19], card_brand_id: values[20], card_brand:values[21], card_type_id:values[22], card_type: values[23], product_identifier_code: values[24], product_identifier_description: values[25])
        conciliated_transaction.acquirer_data = acquirer_data
      end
      if values[0] == "5"
        accounting_events = AccountingEvent.new(event_id: values[1], event_date: values[2], category_id: values[3], category: values[4], type_id: values[5], type: values[6], affiliation_code: values[7], gross_amount: values[8], net_amount: values[9], tax_amount: values[10], bank: values[11], agency: values[12], account: values[13], acquirer_adjust_code: values[14], acquirer_adjust_description: values[15])
        conciliated_transaction.accounting_events.push(accounting_events)
      end
      if values[0] == "6"
        informational_event = InformationalEvent.new(event_id: values[1],event_date: values[2],category_id: values[3],category: values[4],type_id: values[5],type: values[6],affiliation_code: values[7],transaction_installment: values[8], gross_amount: values[9], net_amount: values[10], tax_amount: values[11], bank: values[12], agency: values[13], account: values[14])
        conciliated_transaction.informational_events.push(informational_event)
      end
    end
    conciliation_file
  end
end
