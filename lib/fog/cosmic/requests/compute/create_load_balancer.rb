module Fog
  module Cosmic
    class Compute

      class Real
        # Creates a Load Balancer
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/createLoadBalancer.html]
        def create_load_balancer(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'createLoadBalancer') 
          else
            options.merge!('command' => 'createLoadBalancer', 
            'sourceipaddressnetworkid' => args[0], 
            'algorithm' => args[1], 
            'networkid' => args[2], 
            'instanceport' => args[3], 
            'scheme' => args[4], 
            'name' => args[5], 
            'sourceport' => args[6])
          end
          request(options)
        end
      end

    end
  end
end
