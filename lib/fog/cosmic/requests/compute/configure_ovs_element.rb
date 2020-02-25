module Fog
  module Cosmic
    class Compute

      class Real
        # Configures an ovs element.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/configureOvsElement.html]
        def configure_ovs_element(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'configureOvsElement') 
          else
            options.merge!('command' => 'configureOvsElement', 
            'id' => args[0], 
            'enabled' => args[1])
          end
          request(options)
        end
      end

    end
  end
end
