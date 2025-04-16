#!/bin/bash

maxWrn=10
maxErr=20

maxWrnSec=0
maxErrSec=0

count=0

sudo apt-get update >> /dev/null
count=$(apt list --upgradable 2>/dev/null | grep upgradable | wc -l)
countSec=$(apt list --upgradable 2>/dev/null | grep -i security | wc -l)

# Define XML format string for unit status
read -r -d '' UNIT_XML_FMT << 'EOF_UNIT_XML'
<prtg>
  <result>
    <channel>Available Updates</channel>
    <value>%s</value>
    <float>0</float>
    <LimitMaxError>%d</LimitMaxError>
    <LimitMaxWarning>%d</LimitMaxWarning>
    <LimitMode>1</LimitMode>
  </result>
  <result>
    <channel>Security Updates</channel>
    <value>%s</value>
    <float>0</float>
    <LimitMaxError>%d</LimitMaxError>
    <LimitMaxWarning>%d</LimitMaxWarning>
    <LimitMode>1</LimitMode>
  </result>
</prtg>
EOF_UNIT_XML

printf "${UNIT_XML_FMT}\n" "${count}" "${maxErr}" "${maxWrn}" "${countSec}" "${maxErrSec}" "${maxWrnSec}"