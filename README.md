# nx-file-utils
> File utils for nx.

## installation
```rb
# from gem
gem 'nx-file-utils'
# from git
gem 'nx-file-utils', git: 'git@github.com:afeiship/nx-file-utils.git'
```

## usage
```rb
require "nx-file-utils"

puts Nx::FileUtils.sanitize("HTML5 Canvas核心技术/图形、动画与游戏开发.pdf")
puts Nx::FileUtils.ordinal("HTML5 Canvas核心技术/图形、动画与游戏开发.pdf")

# HTML5Canvas核心技术_图形_动画与游戏开发.pdf
# 000_HTML5 Canvas核心技术/图形、动画与游戏开发.pdf
```

## build/publish
```shell
# build
gem build nx-file-utils.gemspec

# publish
gem push nx-file-utils-0.1.0.gem
```
