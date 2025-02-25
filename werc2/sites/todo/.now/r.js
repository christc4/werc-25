async function fetchPaths() {
    const response = await fetch('http://to-do.avsbq.org/s.json');
    const paths = await response.json();
    return paths;
}

async function goToRandomPage() {
    const paths = await fetchPaths();
    
    // Filter out paths containing a dot
    const filteredPaths = paths.filter(path => !path.includes('.'));
    
    // Select a random path from the filtered paths
    const randomPath = filteredPaths[Math.floor(Math.random() * filteredPaths.length)];
    
    // Redirect to the new URL
    window.location.assign(`http://to-do.avsbq.org/${randomPath}`);
}
