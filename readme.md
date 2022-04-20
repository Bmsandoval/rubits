### Following instructions expect homebrew
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Install recent ruby environment manager
```bash
brew install rbenv ruby-build
```

### Add to bashrc
```bash
cat << EOL > ~/.bashrc
    # load rbenv every time you open a terminal
    echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> 
EOL
```

### Update profiles
```bash
source ~/.bashrc
```

### Install Ruby via rbenv
```bash
rbenv install 3.1.1
```

### Set global ruby version
```bash
rbenv global 3.1.1
```

### Update gem
```bash
gem install rubygems-update
update_rubygems
gem update --system
```

### Install rails
```bash
sudo gem install rails
```

### Make rbenv detect new packages
```bash
rbenv rehash
```

### Install Dependencies
```bash
bundle install
```

### Run the server
```bash
rails server
```


### Test the server
```bash
curl localhost:3000/say \
    -H 'Content-Type: application/json' \
    -d '{"message": "Hello from RapidAPI"}'
```
```bash
curl localhost:3000/say \
    -H 'Content-Type: application/json' \
    -d '{"message": "Hello from RapidAPI"}' \
    | ruby -r json -e "print JSON.parse(STDIN.read)['message']"
```
