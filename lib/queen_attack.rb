class Array
  define_method(:queen_attack) do |coordinates|
    if self[0].eql?(coordinates[0])
      true
    else
      false
    end
  end
end
