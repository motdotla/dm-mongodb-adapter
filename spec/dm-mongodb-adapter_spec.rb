# require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require File.dirname(__FILE__) + '/spec_helper'

require 'dm-core/spec/adapter_shared_spec'
 
describe DataMapper::Adapters::MongodbAdapter do
  before :all do
    @adapter = DataMapper.setup(:default,
      :adapter => 'mongodb',
      :hostname => 'localhost',
      :port => 27017,
      :database => 'dm-mongodb-test'
    )
    
  end
 
  it_should_behave_like 'An Adapter'
  
end