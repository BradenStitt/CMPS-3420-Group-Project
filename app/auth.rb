require 'json'
require 'launchy'

file = File.read('./config/config.json')
client_details = JSON.parse(file)

url = "https://accounts.spotify.com/authorize"
redirect_uri = "https://cs.csub.edu/~jzamora2/3420/authredirect"

url += "?client_id=" + client_details["client_id"]
url += "&response_type=code"
url += "&redirect_uri=" + redirect_uri
url += "&show_dialog=true"
url += "&scope=user-read-private user-read-email user-modify-playback-state "
url += "user-read-playback-position user-library-read streaming user-read-playback-state " 
url += "user-read-recently-played playlist-read-private"

Launchy.open(url)