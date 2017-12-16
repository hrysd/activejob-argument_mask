module ActiveJob
  module ArgumentMask
    module ArgsInfo
      private

      def args_info(job)
        return '' if job.arguments.empty?

        if argument_filter_job_classes.include?(job.class.name)
          argument_filter_message
        else
          super(job)
        end
      end

      def argument_filter_job_classes
        ::ActiveJob::ArgumentMask.job_classes
      end

      def argument_filter_message
        ::ActiveJob::ArgumentMask.message
      end
    end
  end
end
