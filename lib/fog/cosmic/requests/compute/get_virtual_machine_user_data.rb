module Fog
  module Cosmic
    class Compute

      class Real
        # Returns user data associated with the VM
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/getVirtualMachineUserData.html]
        def get_virtual_machine_user_data(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'getVirtualMachineUserData') 
          else
            options.merge!('command' => 'getVirtualMachineUserData', 
            'virtualmachineid' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

