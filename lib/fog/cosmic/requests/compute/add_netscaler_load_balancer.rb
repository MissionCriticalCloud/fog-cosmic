module Fog
  module Cosmic
    class Compute

      class Real
        # Adds a netscaler load balancer device
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/addNetscalerLoadBalancer.html]
        def add_netscaler_load_balancer(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'addNetscalerLoadBalancer') 
          else
            options.merge!('command' => 'addNetscalerLoadBalancer', 
            'username' => args[0], 
            'networkdevicetype' => args[1], 
            'password' => args[2], 
            'physicalnetworkid' => args[3], 
            'url' => args[4])
          end
          request(options)
        end
      end

    end
  end
end
