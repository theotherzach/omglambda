require 'minitest/autorun'
require_relative 'csvomg'

class Testcsv < MiniTest::Unit::TestCase
  def test_that_path_returns
    apath = Csvomg.path('dirname')
    assert apath == 'dirname', "Path should return something."
  end
  
  def test_me_me
  	my_csvomg = Csvomg
    apath = my_csvomg.path('dirname')  	
  	assert apath == 'bryan'.reverse
  end

end
