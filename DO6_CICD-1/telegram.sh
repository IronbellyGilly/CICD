#!/bin/bash

TELEGRAM_BOT_TOKEN="6777923006:AAE68V31bACasecHWdslgpkN4MSGVZSewPo"
TELEGRAM_USER_ID="500003660"

export CI_JOB_STATUS
export CI_JOB_STAGE
export CI_PROJECT_NAME
export CI_COMMIT_REF_SLUG

URL="https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage"
TEXT="Deploy status: $CI_JOB_STATUS%0ASTAGE: $CI_JOB_STAGE%0AProject:+$CI_PROJECT_NAME+%0ABranch:+$CI_COMMIT_REF_SLUG"

curl -s -d "chat_id=$TELEGRAM_USER_ID&disable_web_page_preview=1&text=$TEXT" $URL > /dev/null
