class Array
  def same_structure_as(comp, status=true)
    if self.include?('[')
      return status
    end
    if self.count != comp.count
      status = false
    else
      self.each_with_index do |element, index|
        if element.class != comp[index].class
          status = false
        elsif element.class == Array
          status = element.same_structure_as(comp[index])
        else
          next
        end
      end
    end
    return status
  end
end
