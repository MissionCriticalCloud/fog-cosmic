module Fog
  module Cosmic
    class Compute

      class Real
        # Updates ACL Item with specified Id
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/updateNetworkACLItem.html]
        def update_network_acl_item(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'updateNetworkACLItem') 
          else
            options.merge!('command' => 'updateNetworkACLItem', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

