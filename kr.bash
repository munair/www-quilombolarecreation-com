#!/bin/bash
# script name : kr.bash
# 
# git clone git@github.com:munair/www-quilombolarecreation-kr.git

git clone https://github.com/munair/www-quilombolarecreation-kr.git
cd www-quilombolarecreation-kr
echo "you have five seconds to Ctrl-Z in your manual changes to the following files:"
ls
sleep 5
/bin/cp ../js/* js
/bin/cp ../css/* css
/bin/cp ../images/* images
/bin/cp ../fonts/* fonts
/bin/cp ../sounds/* sounds
cat ../README.md | sed 's/quilombolarecreation-com/quilombolarecreation-kr/g' | sed 's/quilombolarecreation\.com/quilombolarecreation\.kr/g' > README.md
cat ../edit.bash | sed 's/quilombolarecreation-com/quilombolarecreation-kr/g' | sed 's/quilombolarecreation\.com/quilombolarecreation\.kr/g' > edit.bash
cat ../inc_capoeira.html | sed 's/quilombolarecreation-com/quilombolarecreation-kr/g' | sed 's/quilombolarecreation\.com/quilombolarecreation\.kr/g' > inc_capoeira.html
cat ../inc_music.html | sed 's/quilombolarecreation-com/quilombolarecreation-kr/g' | sed 's/quilombolarecreation\.com/quilombolarecreation\.kr/g' > inc_music.html
cat ../inc_faq.html | sed 's/quilombolarecreation-com/quilombolarecreation-kr/g' | sed 's/quilombolarecreation\.com/quilombolarecreation\.kr/g' > inc_faq.html
cat ../inc_contact.html | sed 's/quilombolarecreation-com/quilombolarecreation-kr/g' | sed 's/quilombolarecreation\.com/quilombolarecreation\.kr/g' > inc_contact.html
cat ../inc_email.html | sed 's/quilombolarecreation-com/quilombolarecreation-kr/g' | sed 's/quilombolarecreation\.com/quilombolarecreation\.kr/g' > inc_email.html
cat ../inc_formconfirmation.html | sed 's/quilombolarecreation-com/quilombolarecreation-kr/g' | sed 's/quilombolarecreation\.com/quilombolarecreation\.kr/g' > inc_formconfirmation.html
cat ../package.json | sed 's/quilombolarecreation-com/quilombolarecreation-kr/g' | sed 's/quilombolarecreation\.com/quilombolarecreation\.kr/g' > package.json
cat ../web.js | sed 's/quilombolarecreation-com/quilombolarecreation-kr/g' | sed 's/quilombolarecreation\.com/quilombolarecreation\.kr/g' > web.js
bash edit.bash . "[AUTOMATED] Pushing changes to KR website from COM website excluding index.html in particular. To modify index.html git clone the repo and modify by hand." noprompting
cd ..
rm -rf www-quilombolarecreation-kr
