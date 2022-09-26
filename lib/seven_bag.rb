require 'set'

class SevenBag
  TETROMINO_SET = Set[:T, :I, :O, :J, :L, :S, :Z].freeze
  
  def initialize(random = Random::DEFAULT)
    @random = random
    # Note:
    # The next Tetromino is the **last** element of the Array.
    # Removing the last element is O(1) whereas it’s O(n) for the first.
    # This design optimizes for both shuffling and single-end de-queuing
    @bag = []
  end
  def bag
    @bag.reverse
  end
  
  def get
    if @bag.empty?
      TETROMINO_SET.each {|t| @bag << t}
      @bag.shuffle!(random: random)
    end
    @bag.pop
  end
  # alias get to `obj.()`, syntax sugar for `obj.call`
  alias call get
end
