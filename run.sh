cd $FLOW_CURRENT_PROJECT_PATH

if [[ $FLOW_ENABLE_CACHE != 'FALSE' ]]; then
    echo 'start objc cache'
    FLOW_CACHE_PATH="$CACHE_BASE_URL/Pods"
    if [[ -d $FLOW_CACHE_PATH ]]; then
        echo "cache exists"
    else
        echo "cache not exists"
        mkdir -p $FLOW_CACHE_PATH
    fi
    echo "$(date)" > ${FLOW_CACHE_PATH}/version
    rm -rf $FLOW_CURRENT_PROJECT_PATH/Pods
    ln -s $FLOW_CACHE_PATH $FLOW_CURRENT_PROJECT_PATH/
else
    echo 'cache disabled'
fi
