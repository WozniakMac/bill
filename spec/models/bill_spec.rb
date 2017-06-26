require 'rails_helper'

describe Bill do
  describe '.from_json' do
    let(:json) { load_json('bill') }

    it 'create Bill object from json' do
      bill = described_class.from_json(json)

      expect(bill.statement).to eq(
        {
          'due' => '2015-01-25',
          'generated' => '2015-01-11',
          'period' => {
            'from' => '2015-01-26',
            'to' => '2015-02-25'
          }
        }
      )

      expect(bill.total).to eq(136.03)

      expect(bill.package['subscriptions'].count).to eq(3)
      expect(bill.package['total']).to eq(71.40)
      expect(bill.package['subscriptions'][0]).to eq(
        'type' => 'tv',
        'name' => 'Variety with Movies HD',
        'cost' => 50.00
      )

      expect(bill.call_charges['total']).to eq(59.64)
      expect(bill.call_charges['calls'].count).to eq(28)

      expect(bill.sky_store['total']).to eq(24.97)
      expect(bill.sky_store['rentals']).to eq(
        [
          { 'title' => '50 Shades of Grey', 'cost' => 4.99 }
        ]
      )

      expect(bill.sky_store['buyAndKeep']).to eq(
        [
          { 'title' => 'That\'s what she said', 'cost' => 9.99 },
          { 'title' => 'Broke back mountain', 'cost' => 9.99 }
        ]
      )
    end
  end
end
