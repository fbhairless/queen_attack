class Array
  define_method(:queen_attack) do |coordinates|
    if self[0].eql?(coordinates[0])
      true
    elsif (self[0].-(coordinates[0])).abs.eql?((self[1].-(coordinates[1])).abs)
      true
    elsif self[1].eql?(coordinates[1])
      true
    else
      false
    end
  end
end
