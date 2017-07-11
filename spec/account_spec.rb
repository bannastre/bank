require './lib/account.rb'

describe Account do

  subject(:account) { described_class.new }
  let(:amount) { 1000 }

  it 'starts with a zero balance' do
    expect(Account::INITIAL_BALANCE).to eq(0)
  end

  it 'can make a deposit' do
    expect { account.deposit(amount) }.to change { account.transaction_history.length }.by 1
  end

  it 'can make a withdrawal' do
    expect { account.withdraw(amount) }.to change { account.transaction_history.length }.by 1
  end

  before(:each) do
    account.deposit(amount)
    account.deposit(2000)
    account.withdraw(500)
  end

  it 'prints a statement to the repl' do
    expect(account.statement).to eq('Your current balance is £2500')
  end
end
