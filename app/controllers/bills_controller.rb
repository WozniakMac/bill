class BillsController < ApplicationController
  def show
    bill_json = services.bill_data
    @bill = Bill.from_json(bill_json)
  end
end
