package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"unicode"
)

type wordCount struct {
	word  string
	count int
}

func main() {
	if len(os.Args) < 2 {
		fmt.Fprintf(os.Stderr, "Usage: %s <file>\n", os.Args[0])
		os.Exit(1)
	}

	f, err := os.Open(os.Args[1])
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error: %v\n", err)
		os.Exit(1)
	}
	defer f.Close()

	counts := make(map[string]int)
	word := make([]rune, 0)

	scanner := bufio.NewS(f)
	scanner.Split(bufio.ScanRunes)

	for scanner.Scan() {
		r := rune(scanner.Text()[0])
		if unicode.IsLetter(r) {
			word = append(word, unicode.ToLower(r))
		} else if len(word) > 0 {
			key := string(word)
			counts[key]++
			word = word[:0]
		}
	}

	if len(word) > 0 {
		counts[string(word)]++
	}

	words := make([]wordCount, 0, len(counts))
	for w, c := range counts {
		words = append(words, wordCount{w, c})
	}
	sort.Slice(words, func(i, j int) bool {
		return words[i].count > words[j].count
	})

	for _, wc := range words {
		fmt.Printf("%d %s\n", wc.count, wc.word)
	}
}
