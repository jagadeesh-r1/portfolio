const fs = require('fs');

console.log('Fixing portfolio issues...\n');

// Read current HTML
let html = fs.readFileSync('index.html', 'utf8');

// 1. Add photo section to hero
html = html.replace(
  '<section class="hero">\n<div class="container">',
  '<section class="hero">\n<div class="container">\n<div class="hero-wrapper">\n<div class="hero-photo">\n<img src="profile.jpg" alt="Jagadeesh Reddy Vanga" class="profile-img">\n</div>\n<div class="hero-text">'
);

html = html.replace(
  '<a href="#contact" class="cta">Get in touch</a>\n</div>\n</section>',
  '<a href="#contact" class="cta">Get in touch</a>\n</div>\n</div>\n</div>\n</section>'
);

// 2. Remove broken projects.html links temporarily
html = html.replace(/projects\.html/g, '#work');

// 3. Fix experience link
html = html.replace('projects.html#experience', '#work');

fs.writeFileSync('index.html', html);
console.log('✓ index.html updated with photo section');
console.log('✓ Fixed broken links');

console.log('\nNext: Creating projects.html...');
