module Fog
  module Brightbox
    class Compute
      class Real

        def list_load_balancers(options = {})
          request(
            :expects  => [200],
            :method   => 'GET',
            :path     => "/1.0/load_balancers",
            :headers  => {"Content-Type" => "application/json"},
            :body     => options.to_json
          )
        end

      end

      class Mock

        def list_load_balancers(options = {})
          Fog::Mock.not_implemented
        end

      end
    end
  end
end