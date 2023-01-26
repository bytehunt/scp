#!/usr/bin/env ruby

# Assign 'CCC_SYMBOL' environment variable
env_symbol = ENV["CCC_SYMBOL"]

# If env_symbol exists, use it as the symbol
if env_symbol
    symbol = env_symbol
# Otherwise use a ruby symbol as fallback
else
    symbol = ""
end

# If an argument is given, use it as the symbol
if ARGV[0]
    symbol = ARGV[0]
end

printf "\n"

for i in 0..7
    printf " \033[%dm%s \033[m", 90 + i, symbol
end

printf "\n"

for i in 0..7
    printf " \033[%dm%s \033[m", 30 + i, symbol
end

printf "\n\n"
