# mkkittab.awk - script to create HTML to display images of a kitchen.
# Input is TSV lines like:
# cab_coal-counter_charcoal-handles_silver-faucet_silver-backsplash_2_subway-rugs_maple-doortrim_maple.jpg	coal	charcoal	silver	2	silver	maple	maple	cabs_coal-counter_charcoal-handles_silver-backsp_2-faucet_silver-doortrim_maple-rugs_maple.jpg	Mid center cabinets: coal; counter: charcoal; handles: silver; # backsplashes: 2; faucet: silver; door trim: maple; rugs: maple	mv cab_coal-counter_charcoal-handles_silver-faucet_silver-backsplash_2_subway-rugs_maple-doortrim_maple.jpg cabs_coal-counter_charcoal-handles_silver-backsp_2-faucet_silver-doortrim_maple-rugs_maple.jpg																
# Column 9 is filename, column 10 is caption.
#
# MRR  2025-10-19
#
# Usage: awk -f mkkittab.awk kit.tsv >tab.html
BEGIN {
	FS = "\t"
}
{
	filename = $9
	caption = $10
	print "<div class=\"item\">"
	print "  <a href=\"images/" filename "\">"
	print "    <img src=\"images/thumbs/" filename "\" >"
	print "  </a>"
	print "  <div class=\"caption\">" caption "</div>"
	print "  <hr/>"
	print "</div>"
}

