class InformationalEvent

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
:account

  def initialize(event_id:,event_date:,category_id:,category:,type_id:,type:,affiliation_code:,transaction_installment:,gross_amount:,net_amount:,tax_amount:,bank:,agency:,account:)
    @event_id = event_id
    @event_date = event_date
    @category_id = category_id
    @category = category
    @type_id = type_id
    @type = type
    @affiliation_code = affiliation_code
    @transaction_installment = transaction_installment
    @gross_amount = gross_amount
    @net_amount = net_amount
    @tax_amount = tax_amount
    @bank = bank
    @agency = agency
    @account = account
  end
end
