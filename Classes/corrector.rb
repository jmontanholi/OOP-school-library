require 'pry'

class Corrector
  def correct_name(name)
    if name.length <= 10
      result = name.capitalize
      result.split(//)
    elsif name.length > 10
      result = name.capitalize[0, 10]
      result.split(//)
    end
  end
end
