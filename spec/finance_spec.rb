require '../lib/finance'

describe Finance do
  describe '.run' do
    it 'should return client cost for specified month' do
      client_id =1
      expect(Finance.run(client_id, '2016-12')).to eq 22
    end
  end
end
