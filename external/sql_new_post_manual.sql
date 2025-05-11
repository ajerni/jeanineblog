INSERT INTO jeanine_blog_posts (
    title,
    slug,
    excerpt,
    content,
    featured_image,
    published_date,
    updated_date,
    tags,
    published
) VALUES (
    'First JJ test',
    'first-jj-test',
    'This is a test for the new blog.',
    'With a default image. Blogging is fun!',
    'https://ik.imagekit.io/jeaniblog/blog/tr:w-800,h-400/default-image.jpg',
    NOW(),
    NOW(),
    '["JJ", "test"]',
    1
);