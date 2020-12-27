const axios = require('axios');
fs = require('fs');

const USERNAME = 'Vvitali';

axios.get(`https://api.github.com/users/${USERNAME}/repos?per_page=100&page=1`)
    .then(response => {
        console.log(response.data.length);
        response.data.forEach(repo => {
            fs.appendFile('list.txt', repo.ssh_url + '\n', function (err) {
                if (err) return console.log(err);
            });
        });
    })
    .catch(error => {
        console.log(error);
    });

