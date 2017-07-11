require './lib/transaction.rb'

describe Transaction do

  subject(:transaction) { described_class.new(time) }
  let(:time) { Time.now }

  it 'knows the date and time it was created' do
    expect(transaction.time).to eq(time)
  end
end
