


# F: havent converted entries in this list

#                                    LS_COLORS
# Maintainers: Magnus Woldrich <m@japh.se>,
#              Ryan Delaney <ryan.patrick.delaney@protonmail.com>
#         URL: https://github.com/trapd00r/LS_COLORS
#
#   This is a collection of extension:color mappings, suitable to use as your
#   LS_COLORS environment variable. Most of them use the extended color map,
#   described in the ECMA-48 document; in other words, you'll need a terminal
#   with capabilities of displaying 256 colors.
#
#   As of this writing, over 500 different filetypes/extensions are supported.
#   That's indeed a lot of extensions, but there's a lot more! Therefore I need
#   your help.
#
#   Fork this project on github, add the extensions you are missing, and send me
#   a pull request.
#
#   For files that usually end up next to each other, like html, css and js,
#   try to pick colors that fit nicely together. Filetypes with multiple
#   possible extensions, like htm and html, should have the same color.

# This program is distributed in the hope that it will be useful, but WITHOUT ANY
# WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE. See the Perl Artistic License for more details.
#
# This program is free software: you can redistribute it and/or modify it under
# the terms of the Perl Artistic License as published by the Perl Foundation,
# either version 1.0 of the License, or (at your option) any later version.
#
# You should have received a copy of the Perl Artistic License along
# with this program.  If not, see <http://www.perlfoundation.org/artistic_license_1_0>.

# core {{{1
BLK                   38;5;68
CAPABILITY            38;5;17
CHR                   38;5;113;1
DIR                   38;5;30
DOOR                  38;5;127
EXEC                  38;5;208;1
FIFO                  38;5;126
FILE                  0
LINK                  target
MULTIHARDLINK         38;5;222;1
# "NORMAL don't reset the bold attribute -
# https://github.com/trapd00r/LS_COLORS/issues/11
#NORMAL               38;5;254
NORMAL                0
ORPHAN                48;5;196;38;5;232;1
OTHER_WRITABLE        38;5;220;1
SETGID                48;5;3;38;5;0
SETUID                38;5;220;1;3;100;1
SOCK                  38;5;197
STICKY                38;5;86;48;5;234
STICKY_OTHER_WRITABLE 48;5;235;38;5;139;3
*LS_COLORS 48;5;89;38;5;197;1;3;4;7 # :-)
# }}}

# }}}
# plain-text {{{2
.txt                  38;5;253
# }}}
# }}}
# binary {{{2
.cbr                  38;5;141
.cbz                  38;5;141
.chm                  38;5;141
.djvu                 38;5;141
.pdf                  38;5;141
.PDF                  38;5;141
.mobi                 38;5;141
.epub                 38;5;141
# }}}
# Microsoft {{{2
# words
.docm                 38;5;111;4
.doc                  38;5;111
.docx                 38;5;111
.odb                  38;5;111
.odt                  38;5;111
.rtf                  38;5;111
# presentation
.odp                  38;5;166
.pps                  38;5;166
.ppt                  38;5;166
.pptx                 38;5;166
# Powerpoint show
.ppts                 38;5;166
# Powerpoint with enabled macros
.pptxm                38;5;166;4
# Powerpoint show with enabled macros
.pptsm                38;5;166;4
# spreadsheet
.csv                  38;5;78
.tsv                  38;5;78
# Open document spreadsheet
.ods                  38;5;112
.xla                  38;5;76
# Excel spreadsheet
.xls                  38;5;112
.xlsx                 38;5;112
# Excel spreadsheet with macros
.xlsxm                38;5;112;4
# Excel module
.xltm                 38;5;73;4
.xltx                 38;5;73
# macOS office suite
.pages                38;5;111
.numbers              38;5;112
.key                  38;5;166
# }}}
# configs {{{2
*config               1
*cfg                  1
*conf                 1
*rc                   1
*authorized_keys      1
*known_hosts          1
.ini                  1
.plist                1
# cisco VPN client configuration
.pcf                  1
# adobe photoshop proof settings file
.psf                  1
# Sublime Text config
.hidden-color-scheme  1
.hidden-tmTheme       1
.last-run             1
.merged-ca-bundle     1
.sublime-build        1
.sublime-commands     1
.sublime-keymap       1
.sublime-settings     1
.sublime-snippet      1
.sublime-project      1
.sublime-workspace    1
.tmTheme              1
.user-ca-bundle       1
# RStudio config
.rstheme              1
# eclipse
.epf                  1
# interpreted
.ahk                  38;5;41
# perl
.pl                   38;5;208
.PL                   38;5;160
.t                    38;5;114
# sql
.msql                 38;5;222
.mysql                38;5;222
.pgsql                38;5;222
.sql                  38;5;222
# Tool Command Language
.tcl                  38;5;64;1
# R language
.r                    38;5;49
.R                    38;5;49
# GrADS script
.gs                   38;5;81
# Clojure
.clj                  38;5;41
.cljs                 38;5;41
.cljc                 38;5;41
# Clojure gorilla REPL worksheet
.cljw                 38;5;41
# Scala
.scala                38;5;41
.sc                   38;5;41
# Dart
.dart                 38;5;51
# }}}
# compiled {{{2
# assembly language
.asm                  38;5;81
# LISP
.cl                   38;5;81
.lisp                 38;5;81
.rkt                  38;5;81
# Moonscript
.moon                 38;5;81
# method file for Objective C
.M                    38;5;110
.m                    38;5;110
# Crystal
.cr                   38;5;81
# fortran
.f                    38;5;81
.F                    38;5;81
.for                  38;5;81
.ftn                  38;5;81
.f90                  38;5;81
.F90                  38;5;81
.f95                  38;5;81
.F95                  38;5;81
.f03                  38;5;81
.F03                  38;5;81
.f08                  38;5;81
.F08                  38;5;81
# Nim
.nim                  38;5;81
.nimble               38;5;81
# pascal
.s                    38;5;110
.S                    38;5;110
# AppleScript
.scpt                 38;5;219
# Swift
.swift                38;5;219
# SimplexNumerica
.sx                   38;5;81
# Vala
.vala                 38;5;81
.vapi                 38;5;81
# interface file in GHC - https://github.com/trapd00r/LS_COLORS/pull/9
.hi                   38;5;110
# haskell
.hs                   38;5;81
.lhs                  38;5;81
# agda
.agda                 38;5;81
.lagda                38;5;81
.lagda.tex            38;5;81
.lagda.rst            38;5;81
.lagda.md             38;5;81
.agdai                38;5;110
# Zig
.zig                  38;5;81
# V
.v                    38;5;81
# }}}
# orchestration {{{2
.tf                   38;5;168
.tfstate              38;5;168
.tfvars               38;5;168
# CakePHP view scripts and helpers
.ctp                  38;5;81
# Twig template engine
.twig                 38;5;81
# }}}
# vb/a {{{2
.vb                   38;5;81
.vba                  38;5;81
.vbs                  38;5;81
# ruby rake
.rake                 38;5;155
# automake
.am                   38;5;242
.in                   38;5;242
.hin                  38;5;242
.scan                 38;5;242
.m4                   38;5;242
.old                  38;5;242
.out                  38;5;242
.SKIP                 38;5;244
# }}}

# mobile/streaming {{{2
.3g2                  38;5;115
.3gp                  38;5;115
.gp3                  38;5;115
.webm                 38;5;115
.gp4                  38;5;115
.asf                  38;5;115
.flv                  38;5;115
.ts                   38;5;115
.ogv                  38;5;115
.f4v                  38;5;115
# }}}
# lossless {{{2
.VOB                  38;5;115;1
.vob                  38;5;115;1
# }}}
# subtitles {{{1
.ass                  38;5;117
.srt                  38;5;117
.ssa                  38;5;117
.sub                  38;5;117
.sup                  38;5;117 # bitmap image track
.vtt                  38;5;117
# }}}



# }}}
# packaged apps {{{2
.apk                  38;5;215
.ipa                  38;5;215
.deb                  38;5;215
.rpm                  38;5;215
.jad                  38;5;215
.jar                  38;5;215
.ear                  38;5;215
.war                  38;5;215
.cab                  38;5;215
.pak                  38;5;215
.pk3                  38;5;215
.vdf                  38;5;215
.vpk                  38;5;215
.bsp                  38;5;215
.dmg                  38;5;215
.crx                  38;5;215 # Google Chrome extension
.xpi                  38;5;215 # Mozilla Firefox extension
# }}}
# segments from 0 to three digits after first extension letter {{{2
.r[0-9]{0,2}          38;5;239
.zx[0-9]{0,2}         38;5;239
.z[0-9]{0,2}          38;5;239
# partial files
.part                 38;5;239
# }}}
# partition images {{{2
.iso                  38;5;124
.bin                  38;5;124
.nrg                  38;5;124
.qcow                 38;5;124
.sparseimage          38;5;124
.toast                38;5;124
.vcd                  38;5;124
.vmdk                 38;5;124
# }}}
# databases {{{2
.accdb                38;5;60
.accde                38;5;60
.accdr                38;5;60
.accdt                38;5;60
.db                   38;5;60
.fmp12                38;5;60
.fp7                  38;5;60
.localstorage         38;5;60
.mdb                  38;5;60
.mde                  38;5;60
.sqlite               38;5;60
.typelib              38;5;60
# NetCDF database
.nc                   38;5;60
# }}}
# tempfiles {{{1
# undo files
.pacnew               38;5;33
.un~                  38;5;241
.orig                 38;5;241
# backups
.BUP                  38;5;241
.bak                  38;5;241
.o                    38;5;241 #   *nix Object file (shared libraries, core dumps etc)
*core                 38;5;241 #   Linux user core dump file (from /proc/sys/kernel/core_pattern)
.mdump                38;5;241 #   Mini DuMP crash report
.rlib                 38;5;241 #   Static rust library
.dll                  38;5;241 #   dynamic linked library
# temporary files
.swp                  38;5;244
.swo                  38;5;244
.tmp                  38;5;244
.sassc                38;5;244
# state files
.pid                  38;5;248
.state                38;5;248
*lockfile             38;5;248
*lock                 38;5;248
# error logs
.err                  38;5;160;1
.error                38;5;160;1
.stderr               38;5;160;1
# state dumps
.aria2                38;5;241
.dump                 38;5;241
.stackdump            38;5;241
.zcompdump            38;5;241
.zwc                  38;5;241
# tcpdump, network traffic capture
.pcap                 38;5;29
.cap                  38;5;29
.dmp                  38;5;29
# macOS
.DS_Store             38;5;239
.localized            38;5;239
.CFUserTextEncoding   38;5;239
# }}}
# hosts {{{1
# /etc/hosts.{deny,allow}
.allow                38;5;112
.deny                 38;5;196
# }}}
# systemd {{{1{{{
# http://www.freedesktop.org/software/systemd/man/systemd.unit.html
.service              38;5;45
*@.service            38;5;45
.socket               38;5;45
.swap                 38;5;45
.device               38;5;45
.mount                38;5;45
.automount            38;5;45
.target               38;5;45
.path                 38;5;45
.timer                38;5;45
.snapshot             38;5;45
# }}}}}}
# metadata {{{1
.application          38;5;116
.cue                  38;5;116
.description          38;5;116
.directory            38;5;116
.m3u                  38;5;116
.m3u8                 38;5;116
.md5                  38;5;116
.properties           38;5;116
.sfv                  38;5;116
.theme                38;5;116
.torrent              38;5;116
.urlview              38;5;116
.webloc               38;5;116
.lnk                  38;5;39
# }}}
# macOS files {{{1
*CodeResources        38;5;239 # code signing apps
*PkgInfo              38;5;239 # app bundle id
.nib                  38;5;57  # UI
.car                  38;5;57  # asset catalog
.dylib                38;5;241 # shared lib
# }}}
# Xcode files {{{2
.entitlements         1
.pbxproj              1
.strings              1
.storyboard           38;5;196
.xcconfig             1
.xcsettings           1
.xcuserstate          1
.xcworkspacedata      1
.xib                  38;5;208
# }}}
# encrypted data {{{1
.asc                  38;5;192;3
.bfe                  38;5;192;3
.enc                  38;5;192;3
.gpg                  38;5;192;3
.signature            38;5;192;3
.sig                  38;5;192;3
.p12                  38;5;192;3
.pem                  38;5;192;3
.pgp                  38;5;192;3
.p7s                  38;5;192;3
*id_dsa                38;5;192;3
*id_rsa                38;5;192;3
*id_ecdsa              38;5;192;3
*id_ed25519            38;5;192;3
# }}}
# emulators {{{1
.32x                  38;5;213
.cdi                  38;5;213
.fm2                  38;5;213
.rom                  38;5;213
.sav                  38;5;213
.st                   38;5;213
  # atari
.a00                  38;5;213
.a52                  38;5;213
.A64                  38;5;213
.a64                  38;5;213
.a78                  38;5;213
.adf                  38;5;213
.atr                  38;5;213
  # nintendo
.gb                   38;5;213
.gba                  38;5;213
.gbc                  38;5;213
.gel                  38;5;213
.gg                   38;5;213
.ggl                  38;5;213
.ipk                  38;5;213 # Nintendo (DS Packed Images)
.j64                  38;5;213
.nds                  38;5;213
.nes                  38;5;213
  # Sega
.sms                  38;5;213
# }}}
# Texas Instruments Calculator files {{{1
# for more see http://tibasicdev.wikidot.com/file-extensions
.8xp                  38;5;121
.8eu                  38;5;121
.82p                  38;5;121
.83p                  38;5;121
.8xe                  38;5;121
# }}}
# 3D printing {{{1
.stl                  38;5;216
.dwg                  38;5;216
.ply                  38;5;216
.wrl                  38;5;216
# }}}
# unsorted {{{1
# Portable Object Translation for GNU Gettext
.pot                  38;5;7
# CAD files for printed circuit boards
.pcb                  38;5;7
# groff (rendering app for texinfo)
.mm                   38;5;7
# GIMP files
.gbr                  38;5;7
.scm                  38;5;7
.xcf                  38;5;7
# printer spool file
.spl                  38;5;7
# RStudio project file
.Rproj                38;5;11
# Nokia Symbian OS files
.sis                  38;5;7
.1p                   38;5;7
.3p                   38;5;7
.cnc                  38;5;7
.def                  38;5;7
.ex                   38;5;7
.example              38;5;7
.feature              38;5;7
.ger                  38;5;7
.ics                  38;5;7 # calendar information
.map                  38;5;7
.mf                   38;5;7
.mfasl                38;5;7
.mi                   38;5;7
.mtx                  38;5;7
.pc                   38;5;7
.pi                   38;5;7
.plt                  38;5;7
.pm                   38;5;7
.rdf                  38;5;7
.ru                   38;5;7
.sch                  38;5;7
.sty                  38;5;7
.sug                  38;5;7
.tdy                  38;5;7
.tfm                  38;5;7
.tfnt                 38;5;7
.tg                   38;5;7
.vcard                38;5;7
.vcf                  38;5;7 #contact information
.xln                  38;5;7
# AppCode files
.iml                  38;5;166
# }}}
# termcap {{{1
TERM ansi
TERM color-xterm
TERM con132x25
TERM con132x30
TERM con132x43
TERM con132x60
TERM con80x25
TERM con80x28
TERM con80x30
TERM con80x43
TERM con80x50
TERM con80x60
TERM cons25
TERM console
TERM cygwin
TERM dtterm
TERM Eterm
TERM eterm-color
TERM gnome
TERM gnome-256color
TERM jfbterm
TERM konsole
TERM kterm
TERM linux
TERM linux-c
TERM mach-color
TERM mlterm
TERM putty
TERM rxvt
TERM rxvt-256color
TERM rxvt-cygwin
TERM rxvt-cygwin-native
TERM rxvt-unicode
TERM rxvt-unicode-256color
TERM rxvt-unicode256
TERM screen
TERM screen-256color
TERM screen-256color-bce
TERM screen-bce
TERM screen-w
TERM screen.linux
TERM screen.rxvt
TERM terminator
TERM vt100
TERM xterm
TERM xterm-16color
TERM xterm-256color
TERM xterm-88color
TERM xterm-color
TERM xterm-debian
TERM xterm-kitty
# }}}
# vim: ft=dircolors:fdm=marker:et:sw=2:
