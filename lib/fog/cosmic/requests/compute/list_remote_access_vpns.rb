module Fog
  module Cosmic
    class Compute

      class Real
        # Lists remote access vpns
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listRemoteAccessVpns.html]
        def list_remote_access_vpns(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listRemoteAccessVpns') 
          else
            options.merge!('command' => 'listRemoteAccessVpns')
          end
          request(options)
        end
      end

    end
  end
end

