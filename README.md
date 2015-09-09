# Fit4Tots website (Github Pages)

http://www.fit4tots.com

## Installation

When cloning this repository for the first time, install this commit hook:

    mkdir -p .git/hooks && ln -sf ../../pre-commit.sh .git/hooks/pre-commit && chmod +x .git/hooks/pre-commit


To install ruby 2.2.1 (version of ruby currently used by Github Pages), perform the following (assuming that you have [rbenv](https://github.com/sstephenson/rbenv) installed)

```sh
export CONFIGURE_OPTS="--disable-install-doc --with-readline-dir=$(brew --prefix readline) --with-openssl-dir=$(brew --prefix openssl)"
export RUBY_CONFIGURE_OPTS="--disable-install-doc --with-readline-dir=$(brew --prefix readline) --with-openssl-dir=$(brew --prefix openssl)"
mkdir -p ~/.rbenv/versions/2.1.1/lib
rbenv install 2.1.1
```

## Development

To run the Jekyll site on a development machine:

    bundle exec jekyll serve --config _config.yml,_config_dev.yml

and visit [http://localhost:4000]

Whilst developing, you'll need to run "Guard" to ensure that your HAML changes get converted to HTML.

    bundle exec guard

**Don't edit the HTML files directly, as they will be overwritten during any git-push**
