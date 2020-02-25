module Fog
  module Cosmic
    class Compute

      class Real
        # Lists snapshot policies.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listSnapshotPolicies.html]
        def list_snapshot_policies(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listSnapshotPolicies') 
          else
            options.merge!('command' => 'listSnapshotPolicies', 
            'volumeid' => args[0])
          end
          request(options)
        end
      end

    end
  end
end
