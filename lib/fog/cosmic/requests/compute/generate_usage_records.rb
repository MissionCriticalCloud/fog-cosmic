module Fog
  module Cosmic
    class Compute

      class Real
        # Generates usage records. This will generate records only if there any records to be generated, i.e if the scheduled usage job was not run or failed
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/generateUsageRecords.html]
        def generate_usage_records(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'generateUsageRecords') 
          else
            options.merge!('command' => 'generateUsageRecords', 
            'enddate' => args[0], 
            'startdate' => args[1])
          end
          request(options)
        end
      end

    end
  end
end
