require './lib/account.rb'

describe Account do

  subject(:account) { described_class.new }

  it 'starts with a zero balance' do
    expect(Account::INITIAL_BALANCE).to eq(0)
  end

  it 'can make a deposit' do
    expect { account.deposit(1000) }.to change { account.transaction_history.length }.by 1
  end
end
