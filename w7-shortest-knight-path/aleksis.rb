BRD = ("a".."h").map{ |c| ("1".."8").map{ c + _1 } }.flatten
MVS = [1,2,-1,-2].permutation(2).select { (_1*_2).abs == 2 }

def knight(s,f,d=1)
  puts("s: #{s.inspect}")
  mvs = [s].
    flatten
  puts("mvs: #{mvs.inspect}")
  mvs = [s].
    # flatten.
    map do |x|
    puts("x: #{x.inspect}")
    MVS.map { _1.zip(x.chars.map(&:ord)).map(&:sum).map(&:chr) }.map(&:join)
  end.
    flatten.
    select { BRD.include?(_1) }

  return d if mvs.include?(f)

  knight(mvs,f,d+1)
end

puts("BRD: #{BRD.inspect}")
knight("a1", "h8")