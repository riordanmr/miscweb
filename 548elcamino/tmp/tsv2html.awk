# tsv2html.awk - read a TSV file and create an HTML table from it.
# awk -f tsv2html.awk switches.tsv
# MRR  2024-10-08
BEGIN {
	FS = "\t"
	print "<html>"
	print "<body>"
	print "<table>"
}
{
	name = $1
	count = $2
	print "<tr><td>" name "</td><td>" count "</td><td></td></tr>"
}
END {
	print "</table>"
	print "</body>"
	print "</html>"
}
