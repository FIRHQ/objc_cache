cd $FLOW_CURRENT_PROJECT_PATH

if [[ $FLOW_ENABLE_CACHE != 'FALSE' ]]; then
ftp -n -i >> ftp.log <<EOF
open 172.16.152.110
user flow flow.ci
cd flow
cd ${FLOW_USER_ID}/${FLOW_PROJECT_ID}
get Pods.tar.gz
bye
EOF

if [ -f Pods.tar.gz ];then
    tar -xf Pods.tar.gz
    echo "cache exists"
else
    mkdir -pv Pods
    echo "$(date)" > Pods/version
    echo "cache not exists"
fi
else
  echo 'cache disabled'
fi
