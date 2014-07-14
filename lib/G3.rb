class Geethree
  def initialize(array)
    @arr = array
  end

  def index_by_id
    return_hash = {}
    @arr.each do |hash|
      return_hash.store(hash[:id],{ :id => hash[:id],
                                    :name => hash[:name],
                                    :city => hash[:city],
                                    :state => hash[:state],
                                    :country => hash[:country],})
    end
    return_hash
  end

  def index_by_country
    return_hash = {}
    @arr.each do |hash|
      if return_hash.has_key?(hash[:country])
      else
        return_hash.store(hash[:country],[])
      end
    end
    @arr.each do |hash|
      return_hash[(hash[:country])].push ({:id =>hash[:id],
                                           :name => hash[:name],
                                           :city => hash[:city],
                                           :state => hash[:state],
                                           :country => hash[:country],})
    end
    return_hash
  end
end
