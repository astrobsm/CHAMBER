const { Client } = require('pg');
require('dotenv').config({ path: 'packages/backend/.env' });

(async () => {
  const client = new Client({ connectionString: process.env.DATABASE_URL, ssl: { rejectUnauthorized: false } });
  await client.connect();
  
  // Check S1 topics
  const { rows } = await client.query(`SELECT id, name FROM topics WHERE category_id = 'a0000001-0000-0000-0000-000000000001' ORDER BY id`);
  console.log(`S1 Topics: ${rows.length}`);
  rows.forEach(r => console.log(`  ${r.id}  ${r.name}`));
  
  // Check S1 articles  
  const { rows: arts } = await client.query(`SELECT id, topic_id, title FROM cme_articles WHERE category_id = 'a0000001-0000-0000-0000-000000000001' ORDER BY id`);
  console.log(`\nS1 Articles: ${arts.length}`);
  arts.forEach(r => console.log(`  ${r.id}  ${r.topic_id}  ${r.title}`));
  
  await client.end();
})();
