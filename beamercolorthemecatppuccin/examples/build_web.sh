#!/bin/bash
# Author: Ian Blanes
# License: GPL

# MAIN INDEX

mkdir -p individual

cat > index.html <<EOF
<html>
<head>
<title>Beamer theme gallery</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
<h1>Beamer theme gallery</h1>
<p>Welcome to the beamer (latex) theme gallery.</p>

<p>
Every time I wanted to pick a theme for a presentation I ended up spending a lot of time. That was because I didn't know the themes and for each one I had to recompile the whole presentation and see how it looked.

I searched for samples of those themes but found none. That's why I did this. I hope it might be useful to somebody else.
</p>

<h2>Navigate</h2>

<ul><li><a href="index_by_theme.html">Show by theme</a></li>
<li><a href="index_by_color.html">Show by color</a></li>
<li><a href="index_by_flavor.html">Show by flavor</a></li>
<li><a href="index_by_theme_and_color.html">Show by theme and color</a> (might be a little slow)</li></ul>
<h2>Notes</h2>

The presentation used (&copy; by Till Tantau) is under the GPL and you can get it <a href="template.tex.tmpl">here</a> (and also in a lot of other places). This bunch of pages have been generated using three simple bash scripts. In case someone is interested here they are: <a href="build_preview.sh">build_preview.sh</a> <a href="build_web.sh">build_web.sh</a>. But beware that those scripts directly do not generate these pages (some minimal human intervention is needed).

</body>
</html>
EOF

# INDEX BY THEME

cat > index_by_theme.html <<EOF
<html>
<head>
<title>Beamer theme gallery</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
<h1>Beamer theme gallery</h1>
<a href="index.html">Back to the main page</a><br><br>
<small>(click on one for details)</small>
EOF

for i in merged/*-Blue-Latte.jpg
do

ti=${i#merged/};
ti=${ti%-Blue-Latte.jpg};

fqn=${i#merged/};
fqn=${fqn%.jpg};

echo "<h2>$ti</h2>" >> index_by_theme.html
echo "<a href="individual/$fqn.html"><img src="$i" alt="$fqn"></a>" >> index_by_theme.html

done

cat >> index_by_theme.html <<EOF
</body>
</html>
EOF

# INDEX BY COLOR

cat > index_by_color.html  <<EOF
<html>
<head>
<title>Beamer color theme gallery</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
<h1>Beamer color theme gallery</h1>
<a href="index.html">Back to the main page</a><br><br>
<small>(click on one for details)</small>
EOF

for i in merged/default-*-Latte.jpg
do

ti=${i#merged/default-};
ti=${ti%-Latte.jpg};

fqn=${i#merged/};
fqn=${fqn%.jpg};

echo "<h2>$ti</h2>" >> index_by_color.html
echo "<a href="individual/$fqn.html"><img src="$i" alt="$fqn"></a>" >> index_by_color.html

done

cat >> index_by_color.html <<EOF
</body>
</html>
EOF

# INDEX BY FLAVOR

cat > index_by_flavor.html  <<EOF
<html>
<head>
<title>Beamer colortheme flavor gallery</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
<h1>Beamer colortheme flavor gallery</h1>
<a href="index.html">Back to the main page</a><br><br>
<small>(click on one for details)</small>
EOF

for i in merged/default-Blue-*.jpg
do

ti=${i#merged/default-Blue-};
ti=${ti%.jpg};

fqn=${i#merged/};
fqn=${fqn%.jpg};

echo "<h2>$ti</h2>" >> index_by_flavor.html
echo "<a href=\"individual/$fqn.html\"><img src=\"$i\" alt=\"$fqn\"></a>" >> index_by_flavor.html

done

cat >> index_by_flavor.html <<EOF
</body>
</html>
EOF

# INDEX BY THEME AND COLOR

cat > index_by_theme_and_color.html  <<EOF
<html>
<head>
<title>Beamer theme and color gallery</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
<h1>Beamer theme and color gallery</h1>
<a href="index.html">Back to the main page</a><br><br>
<small>(click on one for details)</small>
EOF

for i in merged/*-*-Latte.jpg
do

ti=${i#merged/};
ti=${ti%-Latte.jpg};

fqn=${i#merged/};
fqn=${fqn%.jpg};

echo "<h2>$ti</h2>" >> index_by_theme_and_color.html
echo "<a href=\"individual/$fqn.html\"><img src=\"$i\" alt=\"$fqn\"></a>" >> index_by_theme_and_color.html

done

cat >> index_by_theme_and_color.html <<EOF
</body>
</html>
EOF


# INDIVIDUALS

themes=$(echo merged/*-Blue-Latte.jpg | sed 's/\(^\| \)merged\/\([^ ]*\)-Blue-Latte\.jpg/\1\2/g')
colors=$(echo merged/default-*-Latte.jpg | sed 's/\(^\| \)merged\/default-\([^ ]*\)-Latte\.jpg/\1\2/g')
flavors=$(echo merged/default-Blue-*.jpg | sed 's/\(^\| \)merged\/default-Blue-\([^ ]*\)\.jpg/\1\2/g')

for i in merged/*.jpg
do

fqn=${i#merged/};
fqn=${fqn%.jpg};

file=individual/$fqn.html

fancyname=$(echo $fqn | sed 's/-/ /g');

t=$(echo $fqn | sed 's/-.*$//');
c=$(echo $fqn | sed 's/^.*-\(.*\)-.*$/\1/');
f=$(echo $fqn | sed 's/^.*-//');


cat > $file <<EOF
<html>
<head>
<title>Beamer theme gallery</title>
<link href="../style.css" rel="stylesheet" type="text/css">
</head>
<body>
<h1>Beamer theme gallery: $fancyname</h1>
<h2>Navigate</h2>
<ul><li><a href="../index_by_theme.html">Show all by theme</a></li>
<li><a href="../index_by_color.html">Show all by color</a></li>
<li><a href="../index_by_flavor.html">Show all by flavor</a></li></ul>
EOF

echo "<h2>Switch</h2>" >> $file

echo "<ul><li>Theme to: " >> $file
for k in $themes; do if [[ $k == $t ]]; then echo $k; else echo "<a href=\"$k-$c-$f.html\">$k</a>"; fi; done >> $file
echo "</li><li>Color to: " >> $file
for k in $colors; do if [[ $k == $c ]]; then echo $k; else echo "<a href=\"$t-$k-$f.html\">$k</a>"; fi; done >> $file
echo "</li><li>Flavor to: " >> $file
for k in $flavors; do if [[ $k == $f ]]; then echo $k; else echo "<a href=\"$t-$c-$k.html\">$k</a>"; fi; done >> $file
echo "</li></ul>" >> $file

echo "<h2>Preview</h2>" >> $file

for k in 01 02 12 17 18
do
echo "<a href=\"../large/$fqn-$k.png\"><img src=\"../small/$fqn-$k.png\" alt=\"$fqn $k\"></a>" >> $file
done

cat >> $file <<EOF
</body>
</html>
EOF

done
