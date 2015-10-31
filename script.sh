cd $1
ls -F | grep /|awk -v arg=$1 'BEGIN{sub("/","",arg);libraryPrefix=arg}
NR%2==1 {a=$0;sub("/","",a)}
NR%2==0 {b=$1;sub("/","",b)}
NR%2==0 {;print "jardiff.py " libraryPrefix "/" a "/" libraryPrefix "-" a".aar " libraryPrefix "/" b "/" libraryPrefix "-" b ".aar >" libraryPrefix "/" a"-"b".patch\ncp -n " libraryPrefix"/"a"-"b".patch ~/git/android-support-library-diff/" libraryPrefix "/"}
NR%2==1 && length(b) != 0 {print "jardiff.py " libraryPrefix "/" b "/" libraryPrefix "-" b".aar " libraryPrefix "/" a "/" libraryPrefix "-" a ".aar >" libraryPrefix "/" b"-"a".patch\ncp -n " libraryPrefix"/"b"-"a".patch ~/git/android-support-library-diff/" libraryPrefix "/"}
'>../cp.sh
cd ..
cat cp.sh
sh cp.sh
