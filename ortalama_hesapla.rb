class OrtalamaHesaplama
    def Durum(vize,final)
        ortalama=(vize*4/10).to_i+(final*6/10).to_i
        if(ortalama>=60)
            puts "#{ortalama} ile geçtiniz"
        else
            puts "#{ortalama} ile kaldınız"
        end
    end
end
ortalamahesap= OrtalamaHesaplama.new
puts "Vize notu Giriniz:"
a=gets.chop
puts "Final notu Giriniz:"
b=gets.chop
ortalamahesap.Durum(a.to_i,b.to_i)
