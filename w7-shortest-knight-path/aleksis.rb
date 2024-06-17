BRD = ("a".."h").map{ |c| ("1".."8").map{ c + _1 } }.flatten
MVS = [1,2,-1,-2].permutation(2).select { (_1*_2).abs == 2 }

def knight(s,f,d=1)
  puts("\ns: #{s.inspect}")
  mvs = [s].flatten
  puts("mvs: #{mvs.inspect}")
  mvs_map = mvs.map do |x|
    puts("x: #{x.inspect}")
    the_mvs_map = MVS.map {
      puts("_1: #{_1}")
      zip = _1.zip(x.chars.map(&:ord))
      puts("zip: #{zip.inspect}")
      zip_map_sum = zip.map(&:sum)
      puts("zip_map_sum: #{zip_map_sum.inspect}")
      zip_map_sum_chr = zip_map_sum.map(&:chr)
      puts("zip_map_sum_chr: #{zip_map_sum_chr.inspect}")
      # zip_map_sum_chr_join = zip_map_sum_chr.map(&:join)
    }
    puts("the_mvs_map: #{the_mvs_map}")
    puts("mvs_map: #{mvs_map.inspect}")
    the_mvs_map_join = the_mvs_map.map(&:join)
    puts("the_mvs_map_join: #{the_mvs_map_join.inspect}")
  end.
    flatten.
    select { BRD.include?(_1) }

  return d if mvs.include?(f)

  knight(mvs,f,d+1)
end

puts("BRD: #{BRD.inspect}")
knight("a1", "h8")