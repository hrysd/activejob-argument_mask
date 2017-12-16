require 'test_helper'
require 'active_support/tagged_logging'

class TestJob < ActiveJob::Base
  def perform(*args)
  end
end

class ActiveJob::ArgumentMaskTest < Minitest::Test
  def setup
    @io = StringIO.new
    ActiveJob::Base.logger = ActiveSupport::TaggedLogging.new(Logger.new(@io))
  end

  def test_it_does_masked
    ActiveJob::ArgumentMask.job_classes = [TestJob.name]

    TestJob.perform_later 'hi'

    output = @io.tap(&:rewind).read
    assert_match %r{#{ActiveJob::ArgumentMask.message}}, output
  end
end
