# -- Constants I'm "constantly" setting ;) --
  COUCHED_CONFIG = YAML.load_file("#{RAILS_ROOT}/config/database.yml")[RAILS_ENV]
  COUCHED_DB = CouchRest.database!("http://#{COUCHED_CONFIG['host']}#{COUCHED_CONFIG['port'] ? ':' + COUCHED_CONFIG['port'].to_s : ''}/#{COUCHED_CONFIG['database']}")
# --

class CouchedModel < CouchRest::ExtendedDocument
  use_database COUCHED_DB
  
  class << self
    def property_accessors(*new_properties)
      new_properties.each do |new_property|
        self.class_eval do
          property new_property
        end
      end
    end
  end
end