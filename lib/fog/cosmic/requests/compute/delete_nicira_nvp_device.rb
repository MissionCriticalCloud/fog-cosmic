module Fog
  module Cosmic
    class Compute

      class Real
        #  delete a nicira nvp device
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteNiciraNvpDevice.html]
        def delete_nicira_nvp_device(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteNiciraNvpDevice') 
          else
            options.merge!('command' => 'deleteNiciraNvpDevice', 
            'nvpdeviceid' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

