https://github.com/luvit/luv/blob/master/docs.md#uvfs_openpath-flags-mode-callback



https://man7.org/linux/man-pages/man3/fopen.3.html
The argument mode points to a string beginning with one of the
       following sequences (possibly followed by additional characters,
       as described below):

       r      Open text file for reading.  The stream is positioned at
              the beginning of the file.

       r+     Open for reading and writing.  The stream is positioned at
              the beginning of the file.

       w      Truncate file to zero length or create text file for
              writing.  The stream is positioned at the beginning of the
              file.

       w+     Open for reading and writing.  The file is created if it
              does not exist, otherwise it is truncated.  The stream is
              positioned at the beginning of the file.

       a      Open for appending (writing at end of file).  The file is
              created if it does not exist.  The stream is positioned at
              the end of the file.

       a+     Open for reading and appending (writing at end of file).
              The file is created if it does not exist.  Output is
              always appended to the end of the file.  POSIX is silent
              on what the initial read position is when using this mode.
              For glibc, the initial file position for reading is at the
              beginning of the file, but for Android/BSD/MacOS, the
              initial file position for reading is at the end of the
              file.

