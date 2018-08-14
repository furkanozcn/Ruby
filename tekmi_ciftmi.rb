class TekmiCiftmi
    def kontrol(sayi)
        if(sayi==0)
            puts "Sayı Sıfırdır."
        else
        if(sayi%2==0)
            puts "Girilen Sayı Çift Sayıdır."
        else
            puts "Girilen Sayı Tek Sayıdır."
        end
    end
    end
end
durum_kontrol=TekmiCiftmi.new
puts "Sayı Giriniz:"
sayi=gets.chop
puts durum_kontrol.kontrol(sayi.to_i)