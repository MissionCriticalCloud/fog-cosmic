module Fog
  module Cosmic
    class Compute

      class Real
        # Lists all available network offerings.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listNetworkOfferings.html]
        def list_network_offerings(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listNetworkOfferings')
          else
            options.merge!('command' => 'listNetworkOfferings')
          end
          request(options)
        end
      end

      class Mock
        def list_network_offerings(*arg)
          network_offerings = self.data[:network_offerings]
          { "listnetworkofferingsresponse" => { "count"=> network_offerings.count, "networkoffering"=> network_offerings.values } }
        end
      end

    end
  end
end

