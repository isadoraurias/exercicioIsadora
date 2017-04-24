class ConciliationFile

  attr_accessor :merchant_id, :acquirer_id, :generationDate_time, :start_period, :end_period, :sequential_number, :processing_type_id, :processing_type, :version
  attr_accessor :conciliated_transactions

  def initialize(merchant_id:, acquirer_id:, generation_date_time:, start_period:, end_period:, sequential_number:, processing_type_id:, processing_type:, version:)
    @merchant_id = merchant_id
    @acquirer_id = acquirer_id
    @generationDate_time = generationDate_time
    @start_period = start_period
    @end_period = end_period
    @sequential_number = sequential_number
    @processing_type_id = processing_type_id
    @processing_type = processing_type
    @version = version
    @conciliated_transactions =[]

    def find_transaction(value)
      conciliated_transactions.find do |conciliated_transaction|
        conciliated_transaction.sale_data.transaction_id == value
    end
  end
end
end
