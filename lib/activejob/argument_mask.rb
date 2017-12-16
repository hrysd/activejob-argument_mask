require 'activejob/argument_mask/args_info'
require 'activejob/argument_mask/version'

require 'active_job/logging'

require 'active_support/configurable'
require 'active_support/log_subscriber'

module ActiveJob
  module ArgumentMask
    include ActiveSupport::Configurable

    config_accessor :job_classes, instance_accessor: false do
      []
    end

    config_accessor :message, instance_accessor: false do
      " with masked arguments"
    end
  end
end

require 'activejob/argument_mask/railtie' if defined?(Rails)

ActiveSupport.on_load(:active_job) do
  ::ActiveJob::Logging::LogSubscriber.prepend ActiveJob::ArgumentMask::ArgsInfo
end
