var doAjax = function ( user_id) {
    var url = "/user/" + user_id + "/get_new.json";
    var data = jQuery.ajax({
        url: url,
        contentType: "application/json",
        async: false
    }).responseText;
    return jQuery.parseJSON(data);

};


function randomIntFromInterval(min,max)
{
    return Math.floor(Math.random()*(max-min+1)+min);
}


