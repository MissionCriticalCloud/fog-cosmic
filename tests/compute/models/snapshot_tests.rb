Shindo.tests("Fog::Compute[:cosmic] | snapshot", ['cosmic']) do
  @params = {:volume_id => "89198f7c-0245-aa1d-136a-c5f479ef9db7"}.tap do |hash|
    [:volume_id, :domain_id, :policy_id].each do |k|
      key = "cosmic_#{k}".to_sym
      if Fog.credentials[key]
        hash[k]= Fog.credentials[key]
      end
    end
  end

  model_tests(Fog::Compute[:cosmic].snapshots, @params, true)

  tests('has volume relation') do
    responds_to(:volume)
  end

end
