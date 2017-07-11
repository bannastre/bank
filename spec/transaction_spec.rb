require './lib/transaction.rb'

describe Transaction do

  subject(:transaction) { described_class.new(amount, direction, time) }
  let(:time) { Time.now }
  let(:amount) { 1000 }
  let(:direction) { :credit }

  it 'knows the date and time it was created' do
    expect(transaction.time).to eq(time)
  end

  it 'knows an amount for the transaction' do
    expect(transaction.amount).to eq(1000)
  end

  it 'knows which direction the transaction is moving' do
    expect(transaction.direction).to eq(:credit)
  end
end
