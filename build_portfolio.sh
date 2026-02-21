#!/bin/bash
echo "Building portfolio..."
cat > index.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Jagadeesh Reddy Vanga - Research engineer building intelligent AI systems at scale">
<title>Jagadeesh Reddy Vanga</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="styles.css">
</head>
<body>
<nav class="nav">
<div class="container">
<a href="/" class="nav-name">Jagadeesh Reddy Vanga</a>
<div class="nav-links">
<a href="#work">Work</a>
<a href="#about">About</a>
<a href="projects.html">Projects</a>
<a href="#contact">Contact</a>
</div>
</div>
</nav>
<main>
<section class="hero">
<div class="container">
<h1 class="hero-title">Research engineer building intelligent AI systems at scale</h1>
<p class="hero-subtitle">Specializing in LLM architectures, production ML, and systems that work in the real world.</p>
<a href="#contact" class="cta">Get in touch</a>
</div>
</section>
</main>
</body>
</html>
EOF
echo "Done!"
