package main;import("bufio";"fmt";"html";"os";"os/exec";"strings")

const maxLength = 20

func main() {
	if len(os.Args) < 2 {
		fmt.Println("Provide one search term")
		os.Exit(1)
	}

	searchTerm := os.Args[1]

	if len(searchTerm) > maxLength {
		fmt.Printf("Search term is too long. Maximum allowed length is %d characters.\n", maxLength)
		os.Exit(1)
	}

	fmt.Printf("Search results for: \"%s\"\n\n", searchTerm)

	// Runs ripgrep (rg)
	cmd := exec.Command("rg", "--line-number", searchTerm, "--glob", "*.md")
	output, err := cmd.Output()
	if err != nil {
		fmt.Println("Error running ripgrep:", err)
		os.Exit(1)
	}

	scanner := bufio.NewScanner(strings.NewReader(string(output)))
	for scanner.Scan() {
		line := scanner.Text()
		parts := strings.SplitN(line, ":", 3)
		if len(parts) < 3 {
			continue
		}

		// Strips ".md" from filename, otherwise raw file opens
		file := strings.ReplaceAll(parts[0], ".md", "")
		lineNumber := parts[1] // The line number
		content := parts[2]

		// Escapes HTML for safety
		escapedContent := html.EscapeString(content)

		// Embolden searched text
		formattedContent := strings.ReplaceAll(escapedContent, searchTerm, "<b>"+searchTerm+"</b>")

		fmt.Printf("<a href=\"%s\">%s</a> (Line %s)\n", file, file, lineNumber)
		fmt.Printf("<p>\"%s\"</p>\n\n", formattedContent)
	}

	if err := scanner.Err(); err != nil {
		fmt.Println("Error reading output:", err)
		os.Exit(1)
	}
}

