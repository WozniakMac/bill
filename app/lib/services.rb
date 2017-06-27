class Services
  def bill_data
    @downloader ||= BillDataDownloader.new
    @downloader.download
  end
end
