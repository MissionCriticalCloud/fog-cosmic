module Fog
  module Cosmic
    class Compute

      class Real
        # Lists projects and provides detailed information for listed projects
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listProjectInvitations.html]
        def list_project_invitations(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listProjectInvitations') 
          else
            options.merge!('command' => 'listProjectInvitations')
          end
          request(options)
        end
      end

    end
  end
end

