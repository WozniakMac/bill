class Bill
  attr_reader :statement, :total, :package, :call_charges, :sky_store

  def initialize(statement, total, package, call_charges, sky_store)
    @statement = statement
    @total = total
    @package = package
    @call_charges = call_charges
    @sky_store = sky_store
  end

  def self.from_json(json)
    hashed_json = JSON.parse(json)
    statement = hashed_json['statement']
    total = hashed_json['total']
    package = hashed_json['package']
    call_charges = hashed_json['callCharges']
    sky_store = hashed_json['skyStore']

    new(statement, total, package, call_charges, sky_store)
  end
end
