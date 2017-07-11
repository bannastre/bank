require './lib/account.rb'

describe Account do

  subject(:account) { described_class.new }

  it 'starts ith a zero balance' do
    expect(Account::INITIAL_BALANCE).to eq(0)
  end
end
