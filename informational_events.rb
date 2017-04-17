class InformationalEvents

attr_accessor :event_id,
:event_date,
:category_id,
:category,
:type_id,
:type,
:affiliation_code,
:transaction_installment,
:gross_amount,
:net_amount,
:tax_amount,
:bank,
:agency,
:account,

  def initialize(event_id:,event_date:,category_id:,category:,type_id:,type:,affiliation_code:,transaction_installment:,gross_amount:,net_amount:,tax_amount:,bank:,agency:,account:,)
    @event_id,
    @event_date,
    @category_id,
    @category,
    @type_id,
    @type,
    @affiliation_code,
    @transaction_installment,
    @gross_amount,
    @net_amount,
    @tax_amount,
    @bank,
    @agency,
    @account,      
  end
end
