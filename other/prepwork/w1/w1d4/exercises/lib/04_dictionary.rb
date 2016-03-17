class Dictionary

  attr_reader :entries, :keywords

  def initialize(entries = {})
    @entries = entries
  end

  def add(options)
    if options.is_a?(Hash)
      @entries.merge!(options)
    else
      @entries[options] = nil
    end
  end

  def keywords
    @entries.keys.sort { |x, y| x <=> y}
  end

  def include?(key)
    @entries.keys.include?(key)
  end

  def find(key_part)
    news = {}
    @entries.map do |key, value|
      if key.include?(key_part)
        news[key] = value
      else
        next
      end
    end
    news
  end


end

@d = Dictionary.new
@d.add("fish" => "aquatic animal")
@d.add("fiend")
p @d.find("fe")
