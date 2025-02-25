document.addEventListener('DOMContentLoaded', function() { 
  const buttons = document.querySelectorAll('.btn'); 
  const bms = document.querySelectorAll('.bm'); 
  buttons.forEach(button => { 
    button.addEventListener('click', function() { 
      // Toggle the on class on the clicked button 
      button.classList.toggle('on'); 
      // Get the selected tags from all on buttons 
      const onTags = Array.from(buttons) 
        .filter(button => button.classList.contains('on')) 
        .map(button => { 
          // Retrieve the tag name and emoji from the button 
          const tag = button.getAttribute('data-tag'); 
          const emoji = button.textContent.trim().replace(tag, '').trim(); // Extract emoji 
          return { tag, emoji }; 
        }); 
      // Clear all existing highlights and emojis 
      bms.forEach(bm => { 
        bm.classList.remove('hl'); 
        // Remove any existing emoji in the bm 
        const emojiSpan = bm.querySelectorAll('.emoji'); 
        emojiSpan.forEach(span => span.remove()); 
      }); 
      // Highlight links that match any of the selected tags 
      bms.forEach(bm => { 
        const tags = bm.getAttribute('data-tags').split(','); 
        // Check if any tag matches the on tags 
        if (tags.some(tag => onTags.map(a => a.tag).includes(tag))) { 
          bm.classList.add('hl'); 
          // Loop through on tags and add corresponding emoji 
          onTags.forEach(({ tag, emoji }) => { 
            if (tags.includes(tag)) { 
              let emojiSpan = bm.querySelector(`.emoji[data-tag="${tag}"]`); 
              // If the emoji hasn't been added yet, add it 
              if (!emojiSpan) { 
                emojiSpan = document.createElement('span'); 
                emojiSpan.classList.add('emoji'); 
                emojiSpan.setAttribute('data-tag', tag);  // Store the tag to avoid duplicates 
                emojiSpan.textContent = emoji; 
                // Prepend emoji to the bm instead of appending
                bm.insertBefore(emojiSpan, bm.firstChild); 
              } 
            } 
          }); 
        } 
      }); 
    }); 
  }); 
});

