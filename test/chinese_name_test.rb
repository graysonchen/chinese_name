require 'test_helper'

ENV["LAST_NAME_FILE"] = File.dirname(__FILE__) + '/last_name_test.dat'

class ChineseNameTest < Minitest::Test
  def test_g_last_name
    assert_equal '陈', ChineseName.g.last_name
  end
end
