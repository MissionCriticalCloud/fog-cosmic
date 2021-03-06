module Fog
  module Cosmic
    class Compute

      class Real
        # Creates a VPC
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/createVPC.html]
        def create_vpc(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'createVPC') 
          else
            options.merge!('command' => 'createVPC', 
            'vpcofferingid' => args[0], 
            'zoneid' => args[1], 
            'name' => args[2], 
            'cidr' => args[3], 
            'displaytext' => args[4])
          end
          request(options)
        end
      end

    end
  end
end

