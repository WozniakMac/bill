require 'rails_helper'

describe Services do
  describe '#bill_data' do
    let(:bill_data_downloader) { double('bill_data_downloader') }
    let(:json) { double('json') }

    it 'gets bill data' do
      expect(BillDataDownloader).to receive(:new).and_return(bill_data_downloader)
      expect(bill_data_downloader).to receive(:download).and_return(json)

      expect(subject.bill_data).to eq(json)
    end
  end
end
