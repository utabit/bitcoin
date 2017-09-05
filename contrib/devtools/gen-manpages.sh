#!/bin/sh

TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
SRCDIR=${SRCDIR:-$TOPDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

UTABITD=${UTABITD:-$SRCDIR/utabitd}
UTABITCLI=${UTABITCLI:-$SRCDIR/utabit-cli}
UTABITTX=${UTABITTX:-$SRCDIR/utabit-tx}
UTABITQT=${UTABITQT:-$SRCDIR/qt/utabit-qt}

[ ! -x $UTABITD ] && echo "$UTABITD not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
UTBVER=($($UTABITCLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }'))

# Create a footer file with copyright content.
# This gets autodetected fine for utabitd if --version-string is not set,
# but has different outcomes for utabit-qt and utabit-cli.
echo "[COPYRIGHT]" > footer.h2m
$UTABITD --version | sed -n '1!p' >> footer.h2m

for cmd in $UTABITD $UTABITCLI $UTABITTX $UTABITQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${UTBVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${UTBVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m
