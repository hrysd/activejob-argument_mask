require 'active_support/ordered_options'

module ActiveJob
  module ArgumentMask
    class Railtie < ::Rails::Railtie
      config.active_job_argument_mask = ActiveSupport::OrderedOptions.new

      initializer 'active_job_argument_mask', before: 'active_job.set_configs' do |app|
        option = app.config.active_job_argument_mask

        ActiveJob::ArgumentMask.configure do |a|
          a.job_classes = option.job_classes if option.job_classes.present?
          a.message     = option.message     if option.message.present?
        end
      end
    end
  end
end
