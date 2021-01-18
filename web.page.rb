require_relative 'request'
require_relative 'components'

nasa_api = request('https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key=BCvNKRQ0riiQJzWZZyitmuw0fnbbwuBiYzeodJwQ')

File.write('./index.html', build_web_page(nasa_api))

puts (photos_count(nasa_api))