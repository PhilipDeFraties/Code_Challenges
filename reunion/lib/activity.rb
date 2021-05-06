class Activity
  attr_reader :name,
              :participants
  def initialize(name)
    @name = name
    @participants = {}
  end

  def add_participant(name, paid)
    @participants[name] = paid
  end

  def total_cost
    if @participants.empty?
      return 0
    else
      @participants.values.sum
    end
  end

  def split
    total_cost / @participants.count
  end

  def owed
    hash = {}
    @participants.each do |k,v|
      hash[k] = split - v
    end
    hash
  end

  def participants_owed
    arr = []
    @participants.each do |name, paid|
      if paid > split
        arr << name
      end
    end
    return arr
  end

  def participants_who_owe
    arr = []
    @participants.each do |name, paid|
      if paid < split
        arr << name
      end
    end
    return arr
  end
end
