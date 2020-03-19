require_relative "../lib/nx-file-utils"

# puts Nx::FileUtils.sanitize("HTML5 Canvas核心技术/图形、动画与游戏开发.pdf")
# puts Nx::FileUtils.ordinal("HTML5 Canvas核心技术/图形、动画与游戏开发.pdf")

Nx::FileUtils.strip_name("./__tests__/etst-<b>(pdf).pdf")
# HTML5Canvas核心技术_图形_动画与游戏开发.pdf
# 000_HTML5 Canvas核心技术/图形、动画与游戏开发.pdf
