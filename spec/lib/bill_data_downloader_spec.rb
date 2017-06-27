require 'rails_helper'

describe BillDataDownloader do
  describe '#download' do
    let(:url) { 'http://safe-plains-5453.herokuapp.com/bill.json' }
    let(:uri) { double('uri', host: host, port: port, request_uri: request_uri) }
    let(:host) { double('host') }
    let(:port) { double('port') }
    let(:request_uri) { double('request_uri') }
    let(:http) { double('http') }
    let(:request) { double('request') }
    let(:response) { double('response', body: 'body', code: '200') }

    it 'downloads data' do
      expect(URI).to receive(:parse).with(url).and_return(uri)
      expect(Net::HTTP).to receive(:new).with(host, port).and_return(http)
      expect(Net::HTTP::Get).to receive(:new).with(request_uri).and_return(request)
      expect(http).to receive(:request).with(request).and_return(response)

      expect(subject.download).to eq('body')
    end
  end
end
