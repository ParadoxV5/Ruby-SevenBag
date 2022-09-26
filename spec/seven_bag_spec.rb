# frozen_string_literal: true
require 'rspec'

RSpec.describe 'SevenBag' do
  2.times do |repeatNo| context "[repetition #{repeatNo}]" do
  
    it '#get returns all 7 pieces after 7 calls' do
      seven_bag = SevenBag.new
      test_set = Set.new(7.times.map { seven_bag.get })
      expect(test_set).to eql(SevenBag::SET)
    end
    
    it '#get consistently use the Random instance given to the constructor' do
      random = Random.new
      seed = random.seed
      seven_bag = SevenBag.new(seed)
      run1 = 7.times.map { seven_bag.get }
      random.srand(seed)
      run2 = 7.times.map { seven_bag.get }
      expect(run2).to eql(run1)
    end
    
  end end
end
