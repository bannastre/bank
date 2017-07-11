require './lib/statement.rb'

describe Statement do

  subject(:statement) { described_class.new }
  let (:transactions) { double(:transactions) }

  it 'starts with a zero balance' do
    expect(Statement::INITIAL_BALANCE).to eq(0)
  end

  it 'prints a statement to the repl' do
    allow(transactions).to receive(:each).and_return("11-07-2017 14:29 | 1000 | | 1000")
    expect(statement.build(transactions)).to eq("11-07-2017 14:29 | 1000 | | 1000")
  end

end
