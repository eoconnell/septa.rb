require 'spec_helper'
require 'webmock/rspec'

describe Septa::SeptaAPI do
 
  before(:each) do
    @api_host = "www3.septa.org/hackathon"
  end
    
  it "should send to the proper host" do
    expect(Septa::SeptaAPI.api_host).to eq(@api_host)  
  end

  it "should send an HTTP request to the next to arrive api" do
    stub_request(:get, "http://#{@api_host}/NextToArrive/Manayunk/Wissahickon/1")
    resp = Septa::SeptaAPI.next_to_arrive "Manayunk", "Wissahickon"
    expect(resp.code).to eq(200)
  end

  it "should send an HTTP request to the train view api" do
    stub_request(:get, "http://#{@api_host}/TrainView/")
    resp = Septa::SeptaAPI.train_view
    expect(resp.code).to eq(200)
  end

  it "should send an HTTP request to the transit view api" do
    stub_request(:get, "http://#{@api_host}/TransitView/17")
    resp = Septa::SeptaAPI.transit_view 17
    expect(resp.code).to eq(200)
  end

end
