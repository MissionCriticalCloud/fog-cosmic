module Fog
  module Cosmic
    class Compute

      class Real
        # Lists site to site vpn customer gateways
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listVpnCustomerGateways.html]
        def list_vpn_customer_gateways(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listVpnCustomerGateways') 
          else
            options.merge!('command' => 'listVpnCustomerGateways')
          end
          request(options)
        end
      end

    end
  end
end

