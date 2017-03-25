/**
 * *---------------------------------------------------------------------------
 * Bu jQuery eklentisi Aycan BULBUL (http://www.aycan.net/) tarafından yapilmistir.
 * Eklenti Adi  : abDegisenArkaPlan 1.0  (http://calismalar.aycan.net/degisenArkaPlan/)
 * Yazar        : Aycan BULBUL, ab@aycan.net
 * Tarih        : Tarih 07 Ocak 2012
 * * ---------------------------------------------------------------------------
 * 
 * Kullanim : http://www.aycan.net/jquery-ile-degisen-arkaplan-eklentisi/
 * 
 * <script type="text/javascript">
 *     $(document).ready(function(){
 *         $('body').abDegisenArkaPlan
 *         ({
 *             resimlerArasiGecis  : 2000,
 *             resimEfekleri       : 1000,
 *             resimler       :"resim1.jpg,resim2.jpg,resim3.jpg,resim4.jpg" 
 *         });         
 *     });    
 * </script>
 * 
 * *---------------------------------------------------------------------------
 **/
(function(jQuery){
    
     jQuery.fn.abDegisenArkaPlan = function(veriAkisi)
     {

        var varsayilan =
        {
            /*Yukarida gonderilen verileri burada aliyoruz*/
            resimlerArasiGecis     : 1000,
            resimEfekleri          : 1000,
            resimler               : ''
        };

        var ayarlar = jQuery.extend(varsayilan, veriAkisi);

        return this.each
        (
            function()
            {
                //Objeyi $obje degiskenine atiyoruz
                $obje       = $(this);
                //ekran genisligini ve yuksekligini aliyoruz.
                $genislik   = $(document).width();
                $yukseklik  = $(window).height();
                //virgul ile eklenen resimleri temizliyoruz.
                var resimler = varsayilan.resimler.split(",");
                //resimleri eklemek icin body tagi icine bir div ekliyoruz
                $obje.append($('<div/>').addClass('ab-resim-tasiyici-ab'));
                //eklentiye tanımlanan tum resimleri deminki div'in icine ekliyoruz
                for(var i in resimler)
                    $('.ab-resim-tasiyici-ab').append($('<img/>', {src: resimler[i]}).addClass('abResimler-ab').css({position: 'fixed', width: $genislik, height: $yukseklik , left:0, top:0,'z-index':'-1'}).hide())
                //Dondurme fonksiyonunu calistiriyoruz.
                dondur();
                //Tum resimler bittikten fonksiyonu tekrardan yeniden calistiracak olan fonksiyonu yaziyoruz.
                setInterval(function(){dondur()},varsayilan.resimlerArasiGecis*resimler.length)
                //Hooop dondurmeye başlıyoruz
                function dondur()
                {
                    $('.ab-resim-tasiyici-ab .abResimler-ab').each(function(i) 
                    {
                        var seciliResim = $(this); 
                        setTimeout(function() 
                        {
                            $(seciliResim).prev().fadeOut(varsayilan.resimEfekleri).end().fadeIn(varsayilan.resimEfekleri).end().fadeOut(varsayilan.resimEfekleri);
                        }, varsayilan.resimlerArasiGecis*i); $(seciliResim).fadeOut()
                    });
                }
                // Resimler donerken kullanici tarayici boyutu ile oynarsa resimleri tekrar boyurlandiriyoruz.
                 $(window).bind('resize',function(){
                    $('.abResimler-ab').css({
                        'width' : $(document).width(),
                        'height' : $(window).height()
                    });
                });
            }
        );
    };
})(jQuery);

