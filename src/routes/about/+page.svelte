<script>
  // About page component
  import Twitter from '$lib/icons/Twitter.svelte';
  import Instagram from '$lib/icons/Instagram.svelte';
  import TikTok from '$lib/icons/TikTok.svelte';
</script>

<svelte:head>
  <title>About | Jeanine's blog</title>
  <meta name="description" content="Learn more about Jeanine and this blog." />
</svelte:head>

<div class="about-container">
  <h1 class="title">About</h1>
  
  <div class="about-content">
    <div class="profile-section">
      <div class="profile-image-container">
        <img src="jeanineprofile2.jpg" alt="Profile" class="profile-image" />
      </div>
      
      <div class="bio">
        <h2>Jeanine Erni</h2>
        <p class="tagline">Bloggerin & Pyromanin</p>
        
        <div class="social-links">
          <a href="https://x.com/jeerni" target="_blank" rel="noopener noreferrer" aria-label="Twitter">
            <Twitter size={24} />
          </a>
          <a href="https://www.tiktok.com/@jeanineerni" target="_blank" rel="noopener noreferrer" aria-label="TikTok">
            <TikTok size={24} />
          </a>
          <a href="https://www.instagram.com/therealjeanigram" target="_blank" rel="noopener noreferrer" aria-label="Instagram">
            <Instagram size={24} />
          </a>
        </div>
      </div>
    </div>
    
    <div class="content-section">
      <h3>About Me</h3>
      <p>Hi there! I'm Jeanine Erni, a passionate hobby blogger and ... bla bla bla ... 😉.</p>
      
      <h3>About This Blog</h3>
      <p>This blog ... bla bla bla ... 😉.</p>

      <p>Things I like:</p>
      <ul>
        <li>Reisen</li>
        <li>Grillen</li>
        <li>Wein</li>
        <li>...</li>
      </ul>
      
     
    </div>
  </div>
</div>

<style>
  .about-container {
    max-width: 900px;
    margin: 0 auto;
    padding: 2rem 1rem;
  }
  
  .title {
    font-size: 2.5rem;
    font-weight: 700;
    margin-bottom: 2rem;
    text-align: center;
  }
  
  .about-content {
    background-color: var(--card-bg-color);
    border-radius: 0.5rem;
    box-shadow: var(--card-shadow);
    overflow: hidden;
  }
  
  .profile-section {
    display: flex;
    padding: 2rem;
    background-color: var(--tag-bg-color);
    border-bottom: 1px solid var(--border-color);
  }
  
  .profile-image-container {
    flex-shrink: 0;
    width: 150px;
    height: 150px;
    border-radius: 50%;
    overflow: hidden;
    margin-right: 2rem;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  }
  
  .profile-image {
    width: 100%;
    height: 100%;
    object-fit: cover;
  }
  
  .bio {
    display: flex;
    flex-direction: column;
    justify-content: center;
  }
  
  .bio h2 {
    font-size: 1.75rem;
    font-weight: 700;
    margin: 0 0 0.5rem;
  }
  
  .tagline {
    font-size: 1.125rem;
    color: var(--nav-text-color);
    margin: 0 0 1rem;
  }
  
  .social-links {
    display: flex;
    gap: 1rem;
  }
  
  .social-links a {
    color: var(--link-color);
    text-decoration: none;
    transition: color 0.2s;
    display: flex;
    align-items: center;
    justify-content: center;
  }
  
  .social-links a:hover {
    color: var(--link-hover-color);
  }
  
  .content-section {
    padding: 2rem;
  }
  
  .content-section h3 {
    font-size: 1.5rem;
    font-weight: 600;
    margin: 0 0 1rem;
    padding-top: 1.5rem;
  }
  
  .content-section h3:first-child {
    padding-top: 0;
  }
  
  .content-section p {
    margin: 0 0 1.25rem;
    line-height: 1.6;
  }
  
  .content-section ul {
    margin: 0 0 1.25rem;
    padding-left: 1.5rem;
  }
  
  .content-section li {
    margin-bottom: 0.5rem;
    line-height: 1.6;
  }
  
  .content-section a {
    color: var(--link-color);
    text-decoration: none;
    border-bottom: 1px solid var(--link-color);
    transition: border-color 0.2s;
  }
  
  .content-section a:hover {
    border-color: transparent;
  }
  
  @media (max-width: 768px) {
    .profile-section {
      flex-direction: column;
      align-items: center;
      text-align: center;
    }
    
    .profile-image-container {
      margin-right: 0;
      margin-bottom: 1.5rem;
    }
    
    .social-links {
      justify-content: center;
    }
  }
  
  @media (max-width: 640px) {
    .title {
      font-size: 2rem;
    }
    
    .profile-section, .content-section {
      padding: 1.5rem;
    }
    
    .profile-image-container {
      width: 120px;
      height: 120px;
    }
    
    .bio h2 {
      font-size: 1.5rem;
    }
  }
</style> 