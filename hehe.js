const axios = require('axios');

console.log('Inside node');
console.log('Process argv: ');
const pr_number = process.argv[2];
const token = process.argv[3];

axios
  .get(
    `https://api.github.com/repos/joenguyen93/test_ci_jenkinsss/pulls/${pr_number}/commits`,
    { headers: { Authorization: `Bearer ${token}` } }
  )
  .then(response => {
    const commitsId = response.data.map(x => x.sha);
    console.log(commitsId);
  });

// axios
//   .get('https://api.github.com/orgs/softagram/repos', {
//     headers: { Authorization: `Bearer ${token}` }
//   })
//   .then(console.log);
