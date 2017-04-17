class SaleData
  attr_accessor :transaction_id,
  :affiliation_code,
  :summary_number,
  :card_number,
  :sale_date,
  :transaction_gross_amount,
  :transaction_tax_amount,
  :transaction_net_amount,
  :tax,
  :tid,
  :nsu,
  :order_id,
  :terminal_logic_number,
  :capture_date,
  :summary_identifier_number,
  :installment_count,
  :authorization_code
end

  def initialize(transaction_id:, affiliation_code:, summary_number:, card_number:, sale_date:, transaction_gross_amount:, transaction_tax_amount:, transaction_net_amount:, tax:, tid:, nsu:, order_id:, terminal_logic_number:, capture_date:, ummary_identifier_number:, installment_count:, authorization_code:)

    @transaction_id = transaction_id
    @affiliation_code = affiliation_code
    @summary_number = summary_number
    @card_number = card_number
    @sale_date = sale_date
    @transaction_gross_amount = transaction_gross_amount
    @transaction_tax_amount = transaction_tax_amount
    @transaction_net_amount = transaction_net_amount
    @tax = tax
    @tid = tid
    @nsu = nsu
    @order_id = order_id
    @terminal_logic_number = terminal_logic_number
    @capture_date = capture_date
    @summary_identifier_number = summary_identifier_number
    @installment_count = installment_count
    @authorization_code = authorization_code

  end
