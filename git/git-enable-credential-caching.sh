git config --global credential.helper cache
# 1 month == 2.6 million seconds
# 3 monthds == 7.8 million seconds
git config --global credential.helper 'cache --timeout=7800000'

