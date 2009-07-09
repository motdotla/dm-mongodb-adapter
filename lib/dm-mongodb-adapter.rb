require 'rubygems'
require 'dm-core'
require 'dm-core/adapters/abstract_adapter'

require 'mongo' # DON'T INSTALL with sudo gem install mongo. install instead with sudo gem install mongodb-mongo_ext & sudo gem install mongodb-mongo from github gems otherwise it will install 0.1 gem. come on mongo guys, clean that up.
require 'json'

module DataMapper::Adapters
  class MongodbAdapter < AbstractAdapter
    include XGen::Mongo::Driver # by including this below you only need to call Mongo

    def initialize(name, options)
      super
      
      @hostname   = @options[:hostname] || 'localhost'
      @port       = @options[:port]     || 27017
      @database   = @options[:database] || 'dm-mongodb-test'
      
      @db = Mongo.new(@hostname, @port).db(@database)
    end
    
    # Create mongodb entry
    def create(resources)
      resources.each do |resource|
        initialize_identity_field(resource, generate_id)
        collection = @db.collection(resource.model)
        # collection.insert(resource.attributes(:field).to_mash.symbolize_keys)
        collection.insert({'a' => 'Scott is doing it'})
      end
    end
    
    private
      # Generates uuid from mongodb ruby driver
      def generate_id
        XGen::Mongo::Driver::ObjectID.new
      end
    
  end

end
