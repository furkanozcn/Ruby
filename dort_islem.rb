class DortIslem
  def toplama(sayi1,sayi2)
    sayi1+sayi2
  end

  def cikarma(sayi1,sayi2)
    sayi1-sayi2
  end

  def carpma(sayi1,sayi2)
    sayi1*sayi2
  end

  def bolme(sayi1,sayi2)
    sayi1/sayi2
  end
end

dort_islem = DortIslem.new

puts "Çıkarma İşlemi: #{dort_islem.cikarma(1,3)}"
puts "Toplama İşlemi: #{dort_islem.toplama(1,2)}"
puts "Bölme İşlemi:   #{dort_islem.bolme(5.0,3.0)}"
puts "Çarpma İşlemi:  #{dort_islem.carpma(5,3)}"

