module Fog
  module Cosmic
    class Compute

      class Real
        # Deletes a project
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteProject.html]
        def delete_project(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteProject') 
          else
            options.merge!('command' => 'deleteProject', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

