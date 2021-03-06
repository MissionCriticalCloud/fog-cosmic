module Fog
  module Cosmic
    class Compute

      class Real
        # Updates a port forwarding rule.  Only the private port and the virtual machine can be updated.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/updatePortForwardingRule.html]
        def update_port_forwarding_rule(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'updatePortForwardingRule') 
          else
            options.merge!('command' => 'updatePortForwardingRule', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

