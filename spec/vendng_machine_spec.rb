require 'spec_helper'

class VendingMachine
  def credits
    0
  end
end

describe VendingMachine do
  it do
    expect(subject.credits).to eq 0
  end

end

