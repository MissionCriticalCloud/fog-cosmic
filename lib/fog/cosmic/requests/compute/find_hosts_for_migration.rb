module Fog
  module Cosmic
    class Compute

      class Real
        # Find hosts suitable for migrating a virtual machine.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/findHostsForMigration.html]
        def find_hosts_for_migration(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'findHostsForMigration') 
          else
            options.merge!('command' => 'findHostsForMigration', 
            'virtualmachineid' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

