# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

spinner = TTY::Spinner.new("[:spinner] Cadastrando Moedas...")
spinner.auto_spin

coins = (
  [
  {
    description: "Bitcoin",
    acronym: "BTC",
    url_image: "https://static.vecteezy.com/system/resources/previews/008/505/801/original/bitcoin-logo-color-illustration-png.png"
  },

  {
    description: "Etherem",
    acronym: "ETH",
    url_image: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Ethereum-icon-purple.svg/2048px-Ethereum-icon-purple.svg.png"
  },

  {
    description: "Dash",
    acronym: "DASH",
    url_image: "https://media.dash.org/wp-content/uploads/dash-d.png"
  }
  ]
)

coins.each do |coin|
  Coin.find_or_create_by!(coin)
end

spinner.success("(Concluído!)")