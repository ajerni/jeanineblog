<script>
  import { onMount } from 'svelte';
  import { writable } from 'svelte/store';
  import Search from '$lib/icons/Search.svelte';
  import Twitter from '$lib/icons/Twitter.svelte';
  import Instagram from '$lib/icons/Instagram.svelte';
  import TikTok from '$lib/icons/TikTok.svelte';
  import SearchComponent from '$lib/components/Search.svelte';
  import { showSearch } from '$lib/stores/SearchStore';

  // Create a store for dark mode state
  const darkMode = writable(false);
  
  onMount(() => {
    // Initialize darkMode store based on HTML class
    $darkMode = document.documentElement.classList.contains('dark');
  });

  function toggleDarkMode() {
    $darkMode = !$darkMode;
    
    // Update DOM and localStorage
    if ($darkMode) {
      document.documentElement.classList.add('dark');
      localStorage.setItem('darkMode', 'true');
    } else {
      document.documentElement.classList.remove('dark');
      localStorage.setItem('darkMode', 'false');
    }
  }
</script>

<svelte:head>
  <title>Jeanine's blog</title>
  <meta name="viewport" content="width=device-width, initial-scale=1" />
</svelte:head>

<!-- Global styles -->
<div class="app">
  <header>
    <div class="header-container">
      <a href="/" class="logo">
        <span class="emoji">😎</span>
        <span class="title">Jeanine's blog</span>
      </a>
      
      <nav>
        <a href="/blog?page=1">Blog</a>
        <a href="/tags">Tags</a>
        <a href="/about">About</a>
        <a href="https://jeanineblogbackend.andierni.ch/">Admin</a>
        
        <button 
          class="search-button" 
          aria-label="Search" 
          on:click={() => $showSearch = true}
          title="Search (⌘+K)"
        >
          <Search size={20} />
        </button>
        <button on:click={toggleDarkMode} class="theme-toggle" aria-label="Toggle dark mode">
          {#if $darkMode}
            <span>🔅</span>
          {:else}
            <span>🌙</span>
          {/if}
        </button>
      </nav>
    </div>
  </header>
  
  <main>
    <slot></slot>
  </main>
  
  <footer>
    <div class="footer-container">
      <p>© 2025 www.jeanineblog.ch - All rights reserved.</p>
      <div class="footer-links">
        <a href="https://x.com/jeerni" aria-label="Twitter">
          <Twitter size={20} />
        </a>
        <a href="https://www.tiktok.com/@jeanineerni" aria-label="TikTok">
          <TikTok size={20} />
        </a>
        <a href="https://www.instagram.com/therealjeanigram" aria-label="Instagram">
          <Instagram size={20} />
        </a>
      </div>
    </div>
  </footer>
</div>

<!-- Add the search component -->
<SearchComponent />

<style>
  :global(html) {
    --background-color: #ffffff;
    --text-color: #1a202c;
    --nav-text-color: #4a5568;
    --card-bg-color: #ffffff;
    --card-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    --header-bg-color: #ffffff;
    --footer-bg-color: #f7fafc;
    --border-color: #e2e8f0;
    --button-bg-color: #e2e8f0;
    --button-text-color: #4a5568;
    --link-color: #4299e1;
    --link-hover-color: #2b6cb0;
    --tag-bg-color: #edf2f7;
    --tag-text-color: #4a5568;
    --primary-color: #3b82f6;
    --primary-color-dark: #2563eb;
    --primary-color-light: #93c5fd;
  }

  :global(html.dark) {
    --background-color: #0f172a;
    --text-color: #e2e8f0;
    --nav-text-color: #a0aec0;
    --card-bg-color: #1a202c;
    --card-shadow: 0 4px 6px rgba(0, 0, 0, 0.3);
    --header-bg-color: #1a202c;
    --footer-bg-color: #1a202c;
    --border-color: #2d3748;
    --button-bg-color: #2d3748;
    --button-text-color: #e2e8f0;
    --link-color: #63b3ed;
    --link-hover-color: #90cdf4;
    --tag-bg-color: #2d3748;
    --tag-text-color: #e2e8f0;
    --primary-color: #60a5fa;
    --primary-color-dark: #3b82f6;
    --primary-color-light: #bfdbfe;
  }

  /* Highlight style for search results */
  :global(.highlight) {
    background-color: rgba(245, 158, 11, 0.2);
    font-weight: bold;
    padding: 0 0.1rem;
    border-radius: 0.125rem;
  }
  
  :global(.dark .highlight) {
    background-color: rgba(245, 158, 11, 0.3);
  }

  :global(body) {
    font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
    color: var(--text-color);
    background-color: var(--background-color);
    margin: 0;
    padding: 0;
    transition: background-color 0.3s ease;
    box-sizing: border-box;
  }
  
  :global(*, *:before, *:after) {
    box-sizing: inherit;
  }

  .app {
    display: flex;
    flex-direction: column;
    min-height: 100vh;
    transition: background-color 0.3s ease;
  }

  header {
    background-color: var(--header-bg-color);
    border-bottom: 1px solid var(--border-color);
    padding: 0.75rem 0;
    transition: background-color 0.3s ease;
    width: 100%;
  }

  .header-container {
    max-width: 1200px;
    width: 100%;
    margin: 0 auto;
    padding: 0 1.5rem;
    display: flex;
    justify-content: space-between;
    align-items: center;
  }

  .logo {
    display: flex;
    align-items: center;
    text-decoration: none;
    color: var(--text-color);
    font-weight: bold;
    font-size: 1.25rem;
  }

  .emoji {
    margin-right: 0.5rem;
  }

  nav {
    display: flex;
    align-items: center;
  }

  nav a {
    color: var(--nav-text-color);
    text-decoration: none;
    margin-right: 1.5rem;
    font-weight: 500;
    transition: color 0.2s;
  }

  nav a:hover {
    color: var(--link-hover-color);
  }
  
  .search-button {
    background: transparent;
    border: none;
    cursor: pointer;
    padding: 0;
    display: flex;
    align-items: center;
    justify-content: center;
    width: 2rem;
    height: 2rem;
    border-radius: 9999px;
    color: var(--nav-text-color);
    margin-right: 0.75rem;
    transition: color 0.2s;
  }
  
  .search-button:hover {
    color: var(--link-hover-color);
  }

  .theme-toggle {
    background: transparent;
    border: none;
    cursor: pointer;
    font-size: 1.25rem;
    padding: 0;
    display: flex;
    align-items: center;
    justify-content: center;
    width: 2rem;
    height: 2rem;
    border-radius: 9999px;
  }

  main {
    flex: 1;
    max-width: 1200px;
    width: 100%;
    margin: 0 auto;
    padding: 2rem 1.5rem;
  }

  footer {
    background-color: var(--footer-bg-color);
    border-top: 1px solid var(--border-color);
    padding: 1.5rem 0;
    transition: background-color 0.3s ease;
    width: 100%;
  }

  .footer-container {
    max-width: 1200px;
    width: 100%;
    margin: 0 auto;
    padding: 0 1.5rem;
    display: flex;
    justify-content: space-between;
    align-items: center;
  }

  .footer-links {
    display: flex;
    gap: 1.5rem;
  }

  .footer-links a {
    color: var(--nav-text-color);
    text-decoration: none;
    transition: color 0.2s;
    display: flex;
    align-items: center;
    justify-content: center;
  }

  .footer-links a:hover {
    color: var(--link-hover-color);
  }

  @media (max-width: 768px) {
    .header-container {
      padding: 0 1rem;
      flex-direction: column;
      gap: 0.75rem;
    }
    
    nav {
      width: 100%;
      justify-content: space-between;
      flex-wrap: wrap;
    }
    
    nav a {
      margin-right: 1rem;
      font-size: 0.95rem;
    }
    
    .footer-container {
      padding: 0 1rem;
      flex-direction: column;
      text-align: center;
      gap: 1rem;
    }
    
    main {
      padding: 1.5rem 1rem;
    }
  }
  
  @media (max-width: 480px) {
    nav {
      justify-content: center;
      gap: 0.5rem;
    }
    
    nav a {
      margin-right: 0.75rem;
      font-size: 0.9rem;
    }
    
    .search-button, .theme-toggle {
      width: 1.75rem;
      height: 1.75rem;
    }
  }
</style> 