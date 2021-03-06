module Fog
  module Cosmic
    class Compute

      class Real
        # Updates attributes of a template.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/updateTemplate.html]
        def update_template(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'updateTemplate') 
          else
            options.merge!('command' => 'updateTemplate', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

