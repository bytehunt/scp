package main

import (
	"fmt"
	"os"
	"strings"
)

func main() {
	var symbol string

	if len(os.Args) != 1 {
		symbol = strings.Join(os.Args[1:], " ")
	} else {
		symbol = os.Getenv("CCC_SYMBOL")
	}

	if symbol == "" {
		symbol = "ʕ◔ϖ◔ʔ"
	}

	fmt.Println()
	for i := -1; i < 7; i++ {
		fmt.Printf(" \033[%dm%s \033[m", 31+i, symbol)
	}
	fmt.Println()

	for i := -1; i < 7; i++ {
		fmt.Printf(" \033[%dm%s \033[m", 91 + i, symbol);
	}
	fmt.Println()
	fmt.Println()
}
