module Fog
  module Cosmic
    class Compute

      class Real
        # Creates a network offering.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/createNetworkOffering.html]
        def create_network_offering(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'createNetworkOffering')
          else
            options.merge!('command' => 'createNetworkOffering',
            'traffictype' => args[0],
            'guestiptype' => args[1],
            'name' => args[2],
            'supportedservices' => args[3],
            'displaytext' => args[4])
          end
          request(options)
        end
      end

      class Mock
        def create_network_offering(options={})
          network_offering_id = Fog::Cosmic.uuid

          network_offering = {
            "id"              => network_offering_id,
            "name"            => "Isolated Network for VPC",
            "displaytext"     => "Isolated Network for VPC",
            "traffictype"     => "Guest",
            "isdefault"       => true,
            "specifyvlan"     => true,
            "conservemode"    => true,
            "specifyipranges" => false,
            "availability"    => "Optional",
            "networkrate"     => 200,
            "state"           => "Enabled",
            "guestiptype"     => "Isolated",
            "serviceofferingid" => "eaec129c-f1f1-f1f1-f1f1-a379f6b2897d"
          }

          self.data[:network_offerings][network_offering_id] = network_offering

          {'createnetworkofferingresponse' => network_offering}
        end
      end

    end
  end
end

