# frozen_string_literal: true
require 'rspec'
require 'seven_bag'

require 'set'

RSpec.describe 'SevenBag' do
  
  it '#get returns all 7 pieces after 7 calls' do
    2.times do
      seven_bag = SevenBag.new
      test_set = Set.new(7.times.map { seven_bag.get })
      expect(test_set).to eql(SevenBag::TETROMINO_SET)
    end
  end
    
  it '#get consistently use the Random it was #initialize-d with' do
    2.times do  
      random = Random.new
      seed = random.seed
      seven_bag = SevenBag.new(random)
      run1 = 7.times.map { seven_bag.get }
      random.srand(seed)
      run2 = 7.times.map { seven_bag.get }
      expect(run2).to eql(run1)
    end
  end
  
end
