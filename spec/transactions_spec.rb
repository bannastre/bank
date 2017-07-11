require './lib/transactions.rb'

describe Transactions do

  subject(:transactions) { described_class.new }
  let(:transaction) { double(:transaction) }

  it 'knows the transactions that have been made' do
    expect(transactions.history).to eq([])
  end

  it 'can record transactions' do
    expect(transactions.record(:transaction)).to eq([:transaction])
  end
end
