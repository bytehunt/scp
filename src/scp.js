#!/usr/bin/env node
const process = require("node:process");

function main() {
  let symbol;
  if (process.argv.length >= 3) {
    symbol = process.argv[2];
  } else if (process.env.CCC_SYMBOL) {
    symbol = process.env.CCC_SYMBOL;
  } else {
    symbol = "\ue74e";
  }
  console.log();
  for (let i = -1; i < 7; i++) {
    process.stdout.write("\033[" + (31 + i) + "m" + symbol + "\033[m ");
  }
  console.log();
  for (let i = -1; i < 7; i++) {
    process.stdout.write("\033[" + (91 + i) + "m" + symbol + "\033[m ");
  }
  console.log();
}

main();
