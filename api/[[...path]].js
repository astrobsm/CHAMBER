// Vercel optional catch-all route.
// Delegates entirely to the primary API handler in ./index.js so the two entry
// points can never drift out of sync. All routing, auth, and database logic
// lives in index.js.
module.exports = require('./index.js');
