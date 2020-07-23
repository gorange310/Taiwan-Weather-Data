function fetchData(url, callback){
    var xhr = new XMLHttpRequest()
    xhr.onreadystatechange = function(){
        if( xhr.readyState === XMLHttpRequest.DONE ){
            if(xhr.status === 200){
                callback( xhr.responseText.toString() )
            }else {
                console.log("HTTP:", xhr.status, xhr.statusText)
            }
        }
    }
    // Kick off the download
    xhr.open("GET", url)
    xhr.send()
}
