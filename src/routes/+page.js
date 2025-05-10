import { fetchAllPosts } from '$lib/stores/posts';

export async function load() {
  await fetchAllPosts();
  
  return {
    meta: {
      title: 'Jeanine\'s blog - Home',
      description: 'Welcome to Jeanine\'s blog - a modern blog about life, love and more.'
    }
  };
} 