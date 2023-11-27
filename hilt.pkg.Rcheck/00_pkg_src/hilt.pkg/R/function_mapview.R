#' Create a quick map from lat/long data
#' 
#' Use your latitude and logitude data for each sample site to make a quick map of your sampling sites. 
#' You will need these packages prior to starting: sf, mapview, and leaflet. 
#' 
#' @param data the dataset you desire to create the map from
#' @param lat the latitude values in your dataset - this should be its own column. Continuous numerical values. 
#' @param long the longitude values in your dataset - this should be its own column. Continuous numerical values. 
#' @param layer_name the title you wish to set to your map. 
#' @return samplemap this will be the map that shows up in your viewer screen on the bottom right. 
#' 
#' @export

mapview <- function(data, long, lat, layer_name) {
  if(is.numeric(data[[lat]])) {
    proposal_map <- st_as_sf(data, coords = c(long, lat), crs = 4326)
    map <- leaflet(proposal_map) %>% 
      addTiles() %>% 
      addCircleMarkers(
        lng = ~st_coordinates(proposal_map)[, "X"],
        lat = ~st_coordinates(proposal_map)[, "Y"],
        color = ~data[[layer_name]],
        popup = ~as.character(data[[layer_name]])
      )
    return(map)
  } else {
    print("Lat and Long are not correct, check again")
  }
}