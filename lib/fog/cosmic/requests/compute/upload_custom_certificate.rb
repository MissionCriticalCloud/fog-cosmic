module Fog
  module Cosmic
    class Compute

      class Real
        # Uploads a custom certificate for the console proxy VMs to use for SSL. Can be used to upload a single certificate signed by a known CA. Can also be used, through multiple calls, to upload a chain of certificates from CA to the custom certificate itself.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/uploadCustomCertificate.html]
        def upload_custom_certificate(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'uploadCustomCertificate') 
          else
            options.merge!('command' => 'uploadCustomCertificate', 
            'domainsuffix' => args[0], 
            'certificate' => args[1])
          end
          request(options)
        end
      end

    end
  end
end

