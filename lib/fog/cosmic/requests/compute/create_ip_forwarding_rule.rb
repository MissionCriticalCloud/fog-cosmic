module Fog
  module Cosmic
    class Compute

      class Real
        # Creates an ip forwarding rule
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/createIpForwardingRule.html]
        def create_ip_forwarding_rule(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'createIpForwardingRule') 
          else
            options.merge!('command' => 'createIpForwardingRule', 
            'ipaddressid' => args[0], 
            'protocol' => args[1], 
            'startport' => args[2])
          end
          request(options)
        end
      end

    end
  end
end

