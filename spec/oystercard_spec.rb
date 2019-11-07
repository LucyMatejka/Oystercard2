require 'oystercard'

describe Oystercard do
  it 'creates an instance of Oystercard' do
    oystercard = Oystercard.new
    expect(oystercard).to be_an_instance_of(Oystercard)
  end

  # it 'responds to balance' do
  #   oystercard = Oystercard.new
  #   expect(oystercard).to respond_to(:balance)
  # end

  it 'should show an initial balance of zero' do
    oystercard = Oystercard.new
    expect(oystercard.balance).to eq(0)
  end

  it 'should respond to top up with a parameter' do
    oystercard = Oystercard.new
    expect(oystercard).to respond_to(:top_up).with(1).argument
  end

  it 'should add a given amount to balance' do
    oystercard = Oystercard.new
   expect{oystercard.top_up 1}.to change{oystercard.balance}.by 1
  end
end
