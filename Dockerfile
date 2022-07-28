FROM node:lts-alpine

RUN npm install --global --production --update-notifier=false markdownlint-cli@0.31.1

COPY entrypoint.sh /entrypoint.sh
COPY markdownlint-problem-matcher.json /markdownlint-problem-matcher.json
COPY custom/config.json /config.json
COPY custom/rules/rules.js /rules/rules.js
COPY custom/rules/md101.js /rules/md101.js
COPY custom/rules/md102.js /rules/md102.js
COPY custom/rules/md103.js /rules/md103.js
COPY custom/rules/md104.js /rules/md104.js
COPY custom/rules/common/inlineTokenChildren.js /rules/common/inlineTokenChildren.js
COPY custom/rules/common/wordPattern.js /rules/common/wordPattern.js
ENTRYPOINT ["/entrypoint.sh"]
