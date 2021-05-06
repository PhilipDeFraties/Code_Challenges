class Reunion
  attr_reader :name,
              :activities
  def initialize(name)
    @name = name
    @activities = []
  end

  def add_activity(activity)
    @activities << activity
  end

  def breakout
    hash = {}
    @activities.each do |activity|
      activity.owed.each do |participant, owes|
        if hash[participant]
          hash[participant] += owes
        else
          hash[participant] = owes
        end
      end
    end
    return hash
  end

  def summary
    str = ""
    breakout.each do |participant, owes|
      str << "#{participant}: #{owes}\n"
    end
    str
  end

  def detailed_breakout
    hash = {}
    @activities.each do |activity|
      fair_share = activity.split
      owed_hash = activity.owed
      participants_owed = activity.participants_owed
      participants_who_owe = activity.participants_who_owe
      activity.participants.each do |name, paid|
        participants_owed.delete(name)
        if hash["#{name}"] && paid > fair_share
          hash["#{name}"] << {activity: "#{activity.name}", payees: participants_who_owe, amount: (fair_share - paid) / participants_who_owe.count }
        elsif hash["#{name}"] && paid < fair_share
          hash["#{name}"] << [{activity: "#{activity.name}", payees: participants_owed, amount: (fair_share - paid) / participants_owed.count }]
        elsif !hash["#{name}"] && paid > fair_share
            hash["#{name}"] = {activity: "#{activity.name}", payees: participants_who_owe, amount: (fair_share - paid) / participants_who_owe.count }
        elsif !hash["#{name}"] && paid < fair_share
            hash["#{name}"] = {activity: "#{activity.name}", payees: participants_owed, amount: (fair_share - paid) / participants_owed.count }
        end
      end
    end
    return hash
  end
end
