module Fog
  module Cosmic
    class Compute

      class Real
        # Adds traffic type to a physical network
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/addTrafficType.html]
        def add_traffic_type(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'addTrafficType') 
          else
            options.merge!('command' => 'addTrafficType', 
            'traffictype' => args[0], 
            'physicalnetworkid' => args[1])
          end
          request(options)
        end
      end

    end
  end
end

