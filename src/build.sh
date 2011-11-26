#!/bin/sh -e
if [ "$SRCDIR" = "" ]; then
	echo "Don't run this script directly; use 0compile to set up the environment"
	exit 1
fi

# This is cleaner, but requires 0install >= 1.4
#"$CEYLONC" -src "$SRCDIR/src" -out "$BUILDDIR" "$SRCDIR/src/helloworld.ceylon"

# Ugly way that works with older versions:
"$JRE_BIN"java -enableassertions -Xbootclasspath/p:$JAVA_CP com.redhat.ceylon.compiler.Main -classpath $COMPILE_CP \
    -src "$SRCDIR/src" -out "$BUILDDIR" "$SRCDIR/src/helloworld.ceylon"

# Copy result to DISTDIR
cp "$BUILDDIR/unversioned/default_module-unversioned.car" "$DISTDIR/helloworld.car"
