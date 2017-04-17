class SaleData

  attr_accessor :transaction_id,
  :external_id,
  :branch_id,
  :affiliation_code,
  :order_id,
  :authorization_code,
  :sale_date,
  :capture_date,
  :transaction_amount,
  :installment_count,
  :customer_name,
  :customer_document,
  :card_number,
  :tid,
  :nsu,
  :payment_method_name

  def initialize(transaction_id:, external_id:, branch_id:, affiliation_code:, order_id:, authorization_code:, sale_date:, capture_date:, transaction_amount:, installment_count:, customer_name:, customer_document:, card_number:, tid:, nsu:, payment_method_name:)
    @transaction_id = transaction_id
    @external_id = external_id
    @branch_id = branch_id
    @affiliation_code = affiliation_code
    @order_id = order_id
    @authorization_code = authorization_code
    @sale_date = sale_date
    @capture_date = capture_date
    @transaction_amount = transaction_amount
    @installment_count = installment_count
    @customer_name = customer_name
    @customer_document = customer_document
    @card_number = card_number
    @tid = tid
    @nsu = nsu
    @payment_method_name = payment_method_name
  end
end
