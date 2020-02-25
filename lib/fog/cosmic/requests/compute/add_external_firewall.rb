module Fog
  module Cosmic
    class Compute

      class Real
        # Adds an external firewall appliance
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/addExternalFirewall.html]
        def add_external_firewall(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'addExternalFirewall') 
          else
            options.merge!('command' => 'addExternalFirewall', 
            'url' => args[0], 
            'username' => args[1], 
            'password' => args[2], 
            'zoneid' => args[3])
          end
          request(options)
        end
      end

    end
  end
end
