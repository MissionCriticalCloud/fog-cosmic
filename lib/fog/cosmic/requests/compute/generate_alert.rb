module Fog
  module Cosmic
    class Compute

      class Real
        # Generates an alert
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/generateAlert.html]
        def generate_alert(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'generateAlert') 
          else
            options.merge!('command' => 'generateAlert', 
            'description' => args[0], 
            'name' => args[1], 
            'type' => args[2])
          end
          request(options)
        end
      end

    end
  end
end

