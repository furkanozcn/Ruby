require 'securerandom'
class Sorular
   
    def sayiOlustur()
       sayi1=SecureRandom.random_number(100)
       sayi2=SecureRandom.random_number(100)
       islem=SecureRandom.random_number(4)
       @sayi1=sayi1
       @sayi2=sayi2
       if(islem==0)
        puts "#{@sayi1}+#{@sayi2}=?"
       end
       if(islem==1)
        puts "#{@sayi1}-#{@sayi2}=?"
       end
       if(islem==2)
        puts "#{@sayi1}*#{@sayi2}=?"
       end
       if(islem==3)
        puts "#{@sayi1}/#{@sayi2}=?"
       end   
    end
    def kontrol(sonuc)
        if sonuc==5
            puts "Cevap Doğru"
        else
            puts sonuc
        end
    end
end
sonuclar=Sorular.new
puts sonuclar.sayiOlustur()
puts "Sonuç:"
sonuc=gets.chop
puts sonuclar.kontrol(sonuc)
