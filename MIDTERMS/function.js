function getCity(){
    window.location.reload();
    var searchQuery = "";
    var html        = "";

    searchQuery = document.getElementById('search_location').value;

    // Request for location search to get metro_id
    var xhr = new XMLHttpRequest();
    xhr.open('GET', 'https://api.songkick.com/api/3.0/search/locations.json?query='+searchQuery+'&apikey=io09K9l3ebJxmxe2', false);
    xhr.send();
    var city_Obj = JSON.parse(xhr.responseText);

    var location = city_Obj.resultsPage.results.location;
    location.forEach(function(item, index, array){
        var metro_id    = array[index].metroArea.id;    

        // Request Metro's Upcoming Events
        xhr.open('GET', 'https://api.songkick.com/api/3.0/metro_areas/'+metro_id+'/calendar.json?apikey=io09K9l3ebJxmxe2', false);
        xhr.send();
        var metro_Obj = JSON.parse(xhr.responseText);
        var events = metro_Obj.resultsPage.results.event;
            events.forEach(function(item1, index1, array1){
                var concert_name    = array1[index1].displayName;
                var concert_uri     = array1[index1].uri;
                var date_time       = array1[index1].start.datetime;
                var artist_name     = array1[index1].performance[0].artist.displayName;
                var city            = array1[index1].location.city;
                var venue           = array1[index1].venue.metroArea.displayName;
                var artist_uri      = array1[index1].performance[0].artist.uri;


                html += "<div style='background-color:#F0FFFF; border-style: solid; padding: 10px'>";
                html += "<h3>"+concert_name+"</h3>";
                html += "<p>Date: "+date_time+"</p>";
                html += "<p>Where: "+venue+", "+city+"</p>";
                html += "<p><a href='"+artist_uri+"' style='text-decoration: none'>Artist: "+artist_name+"</a></p>";
                html += "<button><a href='"+concert_uri+"' style='text-decoration: none'>More info</a></button>";
                html += "</div>";

                $('#venue').append(html);
            });
    });
}