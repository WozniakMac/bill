class BillDataDownloader
  BILL_URL = 'http://safe-plains-5453.herokuapp.com/bill.json'.freeze

  def download
    uri = URI.parse(BILL_URL)
    http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Get.new(uri.request_uri)
    response = http.request(request)

    response.code == '200' ? response.body : nil
  end
end
