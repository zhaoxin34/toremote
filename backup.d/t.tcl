set a [split "sdf/tar.gz" "/"]
set a [lindex $a [expr {[llength $a]-1}]]
puts "$a"
