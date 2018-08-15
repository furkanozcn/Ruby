require 'securerandom'
class Sorular
    $dsayac=0
    $ysayac=0
    def sayiOlustur()
       @sayi1=SecureRandom.random_number(50)
       @sayi2=SecureRandom.random_number(50)
       @islem=SecureRandom.random_number(4)
       if(@islem==0)
        puts "#{@sayi1}+#{@sayi2}=?"
       end
       if(@islem==1)
        puts "#{@sayi1}-#{@sayi2}=?"
       end
       if(@islem==2)
        puts "#{@sayi1}*#{@sayi2}=?"
       end
       if(@islem==3)
        if(@sayi2==0)
            @sayi2=SecureRandom.random_number(49)+1
        puts "#{@sayi1}/#{@sayi2}=?"
        else
            puts "#{@sayi1}/#{@sayi2}=?"
        end
       end   
    end
    def kontrol(sonuc)
        if(@islem==0)
            if (sonuc==(@sayi1+@sayi2))
                $dsayac+=1
                puts "Cevap Doğru"
            else
                $ysayac+=1
                puts "Cevap Yanlış"  
            end
        end
        if(@islem==1)
            if (sonuc==(@sayi1-@sayi2))
                $dsayac+=1
                puts "Cevap Doğru"
            else
                $ysayac+=1
                puts "Cevap Yanlış"  
            end
        end
        if(@islem==2)
            if (sonuc==(@sayi1*@sayi2))
                $dsayac+=1
                puts "Cevap Doğru"
            else
                $ysayac+=1
                puts "Cevap Yanlış"  
            end
        end
        if(@islem==3)
            if (sonuc==(@sayi1/@sayi2))
                $dsayac+=1
                puts "Cevap Doğru"
            else
                $ysayac+=1
                puts "Cevap Yanlış"  
            end
        end
    end
end
puts "Kaç Soru Çözmek İstersiniz?"
adet=gets.chop
$i = 0
sonuclar=Sorular.new
begin  
    puts "Soru #{$i+1}:"
    puts sonuclar.sayiOlustur()
    puts "Sonuç:"
    sonuc=gets.chop
    puts sonuclar.kontrol(sonuc.to_i)
    $i+=1 
end until $i==adet.to_i
puts "#{$i} soruda #{$dsayac.to_i} doğru, #{$ysayac.to_i} yanlış var"
puts "Soruların %#{$i*100*($dsayac/100.to_f)} doğru cevapladınız."