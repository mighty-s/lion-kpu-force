
$(document).on("menu_managements#new:loaded", function(){

    var flag = 0; //메뉴추가 아이콘
    var detail =$('.add_menu_detail');

    var icon =$('.menu_icon');
    var bar =$('.menu_bar');


    $('.add_menu_click').on('click',function(){
        flag++;
        if( flag%2 === 1)
        {
            detail.css('display','block');
        }else
        {
            detail.css('display','none');
        }
    })

    $('.menu_icon').on('mouseover',function(){
        bar.css('display','block');
    })
    $('.test').on('mouseleave',function(){
        bar.css('display','none');
    })

});


$(document).on("operators#edit_menu:loaded", function(){

    var icon =$('.menu_icon');
    var bar =$('.menu_bar');

    $('.menu_icon').on('mouseover',function(){
        bar.css('display','block');
    })
    $('.menu_bar').on('mouseleave',function(){
        bar.css('display','none');
    })

});



$(document).on("operators#delete_menu:loaded", function(){

    var icon =$('.menu_icon');
    var bar =$('.menu_bar');

    $('.menu_icon').on('mouseover',function(){
        bar.css('display','block');
    })
    $('.menu_bar').on('mouseleave',function(){
        bar.css('display','none');
    })

    $('.delete_box').on('click',function(){
        alert("삭제되었습니다.") ;
    })

});

$(document).on("operators#index:loaded", function(){

    var icon =$('.menu_icon');
    var bar =$('.menu_bar');

    $('.menu_icon').on('mouseover',function(){
        bar.css('display','block');
    })
    $('.menu_bar').on('mouseleave',function(){
        bar.css('display','none');
    })

});