ls -F|grep /|sed -e "s/\///g"|xargs -L 1 sh script.sh
find ~/git/android-support-library-diff/ -empty -type f -delete
