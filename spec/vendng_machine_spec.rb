require 'spec_helper'

class VendingMachine
  def credits
    0
  end
  def tray
    
  end
end

describe VendingMachine do
  it { expect(subject.credits).to eq 0 }
  it { expect(subject.tray).to be_nil }
  it do
    sleep 30

  end
end

