for provider, config in compute_providers

  Shindo.tests("#{provider}::Compute | flavors", [provider.to_s.downcase]) do

    flavors_tests(provider[:compute], (config[:flavors_attributes] || {}), config[:mocked])

  end

end
