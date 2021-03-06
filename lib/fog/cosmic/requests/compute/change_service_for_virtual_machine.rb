module Fog
  module Cosmic
    class Compute

      class Real
        # Changes the service offering for a virtual machine. The virtual machine must be in a "Stopped" state for this command to take effect.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/changeServiceForVirtualMachine.html]
        def change_service_for_virtual_machine(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'changeServiceForVirtualMachine') 
          else
            options.merge!('command' => 'changeServiceForVirtualMachine', 
            'serviceofferingid' => args[0], 
            'id' => args[1])
          end
          request(options)
        end
      end

    end
  end
end

