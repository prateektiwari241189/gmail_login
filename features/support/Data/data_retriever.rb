module DataRetriever
  def self.get_gmail_data(key)
    YAML::load_file(File.dirname(__FILE__) + '/gmail_data.yml')[key]
  end
end