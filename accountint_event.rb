class AccountingEvent
  attr_accessor :event_id,
  :event_date,
  :category_id
  :category,
  :type_id,
  :type
  :affiliation_code,
  :gross_amount,
  :net_amount,
  :tax_amount,
  :bank,
  :agency,
  :account,
  :acquirer_adjust_code,
  :acquirer_adjust_description,

  def initialize(event_id:, event_date:, category_id: category:, type_id:, type: affiliation_code:, gross_amount:, net_amount:, tax_amount:, bank:, agency:, account:, acquirer_adjust_code:, acquirer_adjust_description:,)
    @event_id = event_id
    @event_date = event_date
    @category_id = category_id
    @category = category
    @type_id = type_id
    @type = type
    @affiliation_code = affiliation_code
    @gross_amount = gross_amount
    @net_amount = net_amount
    @tax_amount = tax_amount
    @bank = bank
    @agency = agency
    @account = account
    @acquirer_adjust_code = acquirer_adjust_code
    @acquirer_adjust_description = acquirer_adjust_description
  end

end
