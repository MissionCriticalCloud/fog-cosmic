module Fog
  module Cosmic
    class Compute

      class Real
        # Starts a virtual machine.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/startVirtualMachine.html]
        def start_virtual_machine(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'startVirtualMachine') 
          else
            options.merge!('command' => 'startVirtualMachine', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

