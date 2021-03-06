module Fog
  module Cosmic
    class Compute

      class Real
        # List registered keypairs
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listSSHKeyPairs.html]
        def list_ssh_key_pairs(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listSSHKeyPairs')
          else
            options.merge!('command' => 'listSSHKeyPairs')
          end
          # add project id if we have one
          @cosmic_project_id ? options.merge!('projectid' => @cosmic_project_id) : nil
          request(options)
        end
      end

    end
  end
end

