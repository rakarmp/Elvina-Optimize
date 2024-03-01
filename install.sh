
SKIPMOUNT=false
PROPFILE=false
POSTFSDATA=false
LATESTARTSERVICE=false

REPLACE="
"
ui_print "- Installing Elvina Optimize"

unzip -o "$ZIPFILE" 'menu/*' -d $MODPATH >&2
unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
unzip -o "$ZIPFILE" 'func.sh*' -d $MODPATH >&2
chmod +x "$MODPATH"/func.sh

set_permissions() {
  # The following is the default rule, DO NOT remove
  set_perm_recursive $MODPATH 0 0 0755 0644
  set_perm_recursive $MODPATH/menu 0 0 0777 0755
  set_perm $MODPATH/system/bin/elvina 0 0 0755
}