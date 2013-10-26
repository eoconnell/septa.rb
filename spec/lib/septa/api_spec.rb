require 'spec_helper'

describe Septa::API do
 
  before :each do
    @api_host = "www3.septa.org/hackathon"
  end
    
  it "should send to the proper host" do
    expect(Septa::API.api_host).to eq @api_host  
  end

  it "should send an HTTP request to the next to arrive api" do
    stub_request :get, "http://#{@api_host}/NextToArrive/Manayunk/Wissahickon/1"
    res = Septa::API.next_to_arrive "Manayunk", "Wissahickon"
    expect(res.code).to eq "200"
  end

  it "should send an HTTP request to the train view api" do
    stub_request :get, "http://#{@api_host}/TrainView/"
    res = Septa::API.train_view
    expect(res.code).to eq "200"
  end

  it "should send an HTTP request to the transit view api" do
    stub_request :get, "http://#{@api_host}/TransitView/17"
    res = Septa::API.transit_view 17
    expect(res.code).to eq "200"
  end

end
