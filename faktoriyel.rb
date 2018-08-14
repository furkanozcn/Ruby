def faktoriyel(sayi)
  if(sayi == 1)
   1
  else
   sayi * faktoriyel(sayi-1)
  end
end

puts("Sayı giriniz:")
a = gets.chop.to_i
puts faktoriyel(a)
