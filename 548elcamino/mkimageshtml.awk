# mkimageshtml.awk - script to create HTML of links that, when
# clicked on, display an image.
# Sample input:
# blueprint01.jpg,Site Plan
# Sample output:
#         <a href="blueprintimages/blueprint01.jpg">Site Plan</a><br/>
# Usage: awk -f mkimageshtml.awk images.csv
# Mark Riordan  28 Sep 2024
BEGIN {
	FS = ","
}
{
	filename = $1
	text = $2
	print "        <a href=\"blueprintimages/" filename "\">" text "</a><br/>"
}
