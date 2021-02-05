require_relative '../lib/dice_app' 

describe Dice do 
  it "responds to the roll method" do 
    expect(subject).to respond_to(:roll)
  end
  
  it "gives a random integer output when roll method called" do 
    expect(subject.roll(5)).to all(be_integer)
  end
  
  it "gives as many numbers as requested,bewteen 1 & 6, when roll is called" do
    expect(subject.roll(10)).to all(be_between(1,6))
    expect(subject.roll(10).size).to eq(10) 
  end
  
  it "allows me to access past roles when called" do 
    expect(subject).to respond_to(:past_roles)
    expect(subject.past_roles).to all(be_integer)
  end
  
  it "gives the total score so far when called" do 
    dice = Dice.new
    points = (dice.roll(2)).sum
    expect(dice.score).to eq(points)
  end
end