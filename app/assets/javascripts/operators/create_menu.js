$(document).on("operators#create_menu:loaded", function(){

    var flag = 0;
    var detail =$('.add_menu_detail');

    $('.add_menu_click').on('click',function(){
        flag++;
        if( flag%2 === 1)
        {
            detail.css('display','block');
        }else{
            detail.css('display','none');
        }
    })

});