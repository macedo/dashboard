require 'test_helper'

class VideoTest < ActiveSupport::TestCase
  test 'should not save video withou source' do
    video = Video.new
    assert_not video.save, 'Saved the video without a source'
  end
end
