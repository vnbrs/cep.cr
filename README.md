# cep.cr : the Brazilian way

cep.cr is an awesome Crystal library to fetch Brazilian post codes easily using Postmon API.

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  cep:
    github: vnbrs/cep.cr
```

## Usage

```crystal
require "cep"

CEP::Address.find "80210130"     # fetch addresses easily 😃
CEP::Address.find 80210130       # works with numerics    🤓
CEP::Address.find "80210-130"    # works with formats     🚧
CEP::Address.find "8s0t2a1r0130" # sanitizes the data     🛀🏼
=> #<CEP::Address:0x10e1b83c0 @cep="80210130", @neighborhood="Jardim Botânico", @city="Curitiba", @street="Rua José Ananias Mauad", @state="Paraná", @state_abbreviation="PR">

CEP::Address.find "12345678"     # in unideal scenarios.  😨
=> The API responded with 404 (CEP::ApiRequestError)
```

## Contributing

1. Fork it ( https://github.com/vnbrs/cep/fork )
2. Create your feature branch (git checkout -b my-cool-feature)
3. Commit your changes (git commit -am 'Add a cool feature')
4. Push to the branch (git push origin my-cool-feature)
5. Create a new Pull Request

## Contributors

- [vnbrs](https://github.com/vnbrs) Vinicius Brasil - creator, maintainer
