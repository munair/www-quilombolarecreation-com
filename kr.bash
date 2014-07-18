#!/bin/bash
# script name : kr.bash
# 
git clone git@heroku.com:www-quilombolarecreation-kr.git
cd www-quilombolarecreation-kr
cat ../README.md | sed 's/-com/-kr/g' | sed 's/\.com/\.kr/g' > README.md
cat ../edit.bash | sed 's/-com/-kr/g' | sed 's/\.com/\.kr/g' > edit.bash
cat ../inc_contact.html | sed 's/-com/-kr/g' | sed 's/\.com/\.kr/g' > inc_contact.html
cat ../inc_email.html | sed 's/-com/-kr/g' | sed 's/\.com/\.kr/g' > inc_email.html
cat ../inc_formconfirmation.html | sed 's/-com/-kr/g' | sed 's/\.com/\.kr/g' > inc_formconfirmation.html
cat ../package.json | sed 's/-com/-kr/g' | sed 's/\.com/\.kr/g' > package.json
cat ../web.js | sed 's/-com/-kr/g' | sed 's/\.com/\.kr/g' > web.js
bash edit.bash . "[AUTOMATED] Pushing changes to KR website from COM website excluding index.html in particular. To modify index.html git clone the repo and modify by hand." noprompting
cd ..
rm -rf www-quilombolarecreation-kr
