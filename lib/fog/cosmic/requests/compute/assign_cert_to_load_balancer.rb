module Fog
  module Cosmic
    class Compute

      class Real
        # Assigns a certificate to a Load Balancer Rule
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/assignCertToLoadBalancer.html]
        def assign_cert_to_load_balancer(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'assignCertToLoadBalancer') 
          else
            options.merge!('command' => 'assignCertToLoadBalancer', 
            'lbruleid' => args[0], 
            'certid' => args[1])
          end
          request(options)
        end
      end

    end
  end
end

