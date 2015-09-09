# Fit4Tots website (Github Pages)

http://www.fit4tots.com


## Installation

To install ruby 2.2.1 you may need to perform the following

```sh
export CONFIGURE_OPTS="--disable-install-doc --with-readline-dir=$(brew --prefix readline) --with-openssl-dir=$(brew --prefix openssl)"

export  RUBY_CONFIGURE_OPTS="--disable-install-doc --with-readline-dir=$(brew --prefix readline) --with-openssl-dir=$(brew --prefix openssl)"

mkdir -p ~/.rbenv/versions/2.1.1/lib
rbenv install 2.1.1
```

## Development

To run the Jekyll site on a development machine:

    bundle exec jekyll serve --config _config.yml,_config_dev.yml

and visit http://localhost:4000
