
# objc_cache Step
Objc cache

### INPUTS
* `FLOW_ENABLE_CACHE` - 

## EXAMPLE 

```yml
steps:
  - name: objc_cache
    enable: true
    failure: true
    plugin:
      name: objc_cache
      inputs:
        - FLOW_ENABLE_CACHE=$FLOW_ENABLE_CACHE
```
