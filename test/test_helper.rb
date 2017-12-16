$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'active_job'
require 'activejob/argument_mask'

require 'minitest/autorun'

ActiveJob::Base.queue_adapter = :inline
