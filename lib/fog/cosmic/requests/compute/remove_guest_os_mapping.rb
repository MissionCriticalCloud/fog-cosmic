module Fog
  module Cosmic
    class Compute

      class Real
        # Removes a Guest OS Mapping.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/removeGuestOsMapping.html]
        def remove_guest_os_mapping(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'removeGuestOsMapping') 
          else
            options.merge!('command' => 'removeGuestOsMapping', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

