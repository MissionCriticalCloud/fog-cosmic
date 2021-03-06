module Fog
  module Cosmic
    class Compute

      class Real
        # list the vm nics  IP to NIC
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listNics.html]
        def list_nics(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listNics') 
          else
            options.merge!('command' => 'listNics', 
            'virtualmachineid' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

