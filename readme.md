install recent ruby

```bash
brew install ruby@3.0
```

add to bashrc

```bash
cat << EOL > ~/.bashrc
	# If you need to have ruby@3.0 first in your PATH:
	export PATH="/usr/local/opt/ruby@3.0/bin:$PATH"

	# For compilers to find ruby@3.0 you may need to set:
	export LDFLAGS="-L/usr/local/opt/ruby@3.0/lib"
	export CPPFLAGS="-I/usr/local/opt/ruby@3.0/include"

	# For pkg-config to find ruby@3.0 you may need to set:
	export PKG_CONFIG_PATH="/usr/local/opt/ruby@3.0/lib/pkgconfig"
EOL
```

update gem

```bash
gem install rubygems-update
update_rubygems
gem update --system
```

install rails

```bash
gem install rails
```
