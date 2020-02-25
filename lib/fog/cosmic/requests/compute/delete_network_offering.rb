module Fog
  module Cosmic
    class Compute

      class Real
        # Deletes a network offering.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteNetworkOffering.html]
        def delete_network_offering(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteNetworkOffering')
          else
            options.merge!('command' => 'deleteNetworkOffering',
            'id' => args[0])
          end
          request(options)
        end
      end

      class Mock
        def delete_network_offering(options={})
          network_offering_id = options['id']
          data[:network_offerings].delete(network_offering_id) if data[:network_offerings][network_offering_id]

          { 'deletenetworkofferingresponse' => { 'success' => 'true' } }
        end
      end

    end
  end
end
