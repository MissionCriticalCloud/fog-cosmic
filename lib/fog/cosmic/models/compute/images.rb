require 'fog/core/collection'
require 'fog/cosmic/models/compute/image'

module Fog
  module Cosmic
    class Compute
      class Images < Fog::Collection
        model Fog::Cosmic::Compute::Image

        def all(filters={})
          options = get_filter_options(filters)
          data = service.list_templates(options)["listtemplatesresponse"]["template"] || []
          load(data)
        end

        def get(template_id, filters={})
          filter_option = get_filter_options(filters)
          options = filter_option.merge('id' => template_id)
          if template = service.list_templates(options)["listtemplatesresponse"]["template"].first
            new(template)
          end
        rescue Fog::Cosmic::Compute::BadRequest
          nil
        end

        private

        def get_filter_options(filters)
          default_filter = {
              'templatefilter' => 'self'
          }
          default_filter.merge(filters)
        end
      end
    end
  end
end
