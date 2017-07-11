require './lib/statement.rb'

describe Statement do

  subject(:statement) { described_class.new }
  let (:transaction_history) { double(:transaction_history) }

  it 'starts with a zero balance' do
    expect(Statement::INITIAL_BALANCE).to eq(0)
  end

  it 'prints a statement to the repl' do
    allow(transaction_history).to receive(:each)
    expect(statement.build(transaction_history)).to eq('Your current balance is £0')
  end

end
