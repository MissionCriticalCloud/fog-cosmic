module Fog
  module Cosmic
    class Compute

      class Real
        # Locks an account
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/lockAccount.html]
        def lock_account(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'lockAccount') 
          else
            options.merge!('command' => 'lockAccount', 
            'account' => args[0], 
            'domainid' => args[1])
          end
          request(options)
        end
      end

    end
  end
end

