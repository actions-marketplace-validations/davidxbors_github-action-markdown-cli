FROM node:lts-alpine

RUN npm install --global --production --update-notifier=false markdownlint-cli@0.31.1

COPY entrypoint.sh /entrypoint.sh
COPY markdownlint-problem-matcher.json /markdownlint-problem-matcher.json
COPY custom/config.json /config.json
COPY custom/rules/rules.js /rules/rules.js
COPY custom/rules/rules/md101.js /rules/rules/md101.js
COPY custom/rules/rules/md102.js /rules/rules/md102.js
COPY custom/rules/rules/md103.js /rules/rules/md103.js
COPY custom/rules/rules/md104.js /rules/rules/md104.js
COPY custom/rules/rules/common/inlineTokenChildren.js /rules/rules/common/inlineTokenChildren.js
COPY custom/rules/rules/common/wordPattern.js /rules/rules/common/wordPattern.js
ENTRYPOINT ["/entrypoint.sh"]
