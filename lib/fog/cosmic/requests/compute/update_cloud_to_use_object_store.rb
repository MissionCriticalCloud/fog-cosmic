module Fog
  module Cosmic
    class Compute

      class Real
        # Migrate current NFS secondary storages to use object store.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/updateCloudToUseObjectStore.html]
        def update_cloud_to_use_object_store(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'updateCloudToUseObjectStore') 
          else
            options.merge!('command' => 'updateCloudToUseObjectStore', 
            'provider' => args[0])
          end
          request(options)
        end
      end

    end
  end
end
