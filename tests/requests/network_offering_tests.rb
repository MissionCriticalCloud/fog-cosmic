Shindo.tests('Fog::Compute[:cosmic] | network offering requests', ['cosmic']) do

  @network_offerings_format = {
    'listnetworkofferingsresponse'  => {
      'count' => Integer,
      'networkoffering' => [
        'id' => String,
        'name' => String,
        'displaytext' => String,
        'traffictype' => String,
        'isdefault' => Fog::Boolean,
        'specifyvlan' => Fog::Boolean,
        'conservemode' => Fog::Boolean,
        'specifyipranges' => Fog::Boolean,
        'availability' => String,
        'networkrate' => Integer,
        'state' => String,
        'guestiptype' => String,
        'serviceofferingid' => String,
      ]
    }
  }

  tests('success') do

    tests('#list_network_offerings').formats(@network_offerings_format) do
      Fog::Compute[:cosmic].list_network_offerings
    end

  end

end
