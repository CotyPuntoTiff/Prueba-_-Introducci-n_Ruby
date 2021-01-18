require_relative 'request'
require_relative 'components'

characters = request('https://futuramaapi.herokuapp.com/api/v2/characters')

File.write('./index.html', template(characters))