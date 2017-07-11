require './lib/account.rb'

describe Account do

  subject(:account) { described_class.new }
  let(:amount) { 1000 }

  it 'can make a deposit' do
    expect { account.deposit(amount) }.to change { account.transaction_history.length }.by 1
  end

  it 'can make a withdrawal' do
    expect { account.withdraw(amount) }.to change { account.transaction_history.length }.by 1
  end
end
