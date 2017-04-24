class ConciliatedTransaction

attr_accessor :conciliation_type_id, :conciliation_type
attr_accessor :sale_data, :acquirer_data, :accounting_events, :informational_events

  def initialize(conciliation_type_id:, conciliation_type:)
    @conciliation_type_id = conciliation_type_id
    @conciliation_type = conciliation_type
    @accounting_events = []
    @informational_events = []

 end

end
