# quote2html.awk - convert the TSV of Goettl's quotes to HTML.
# The main reason I'm writing this is that the details section of the
# TSV is extremely long, making it difficult to read the list of quotes.
# MRR 2024-10-09
# Usage: awk -f quote2html.awk goettlsquotes.tsv > goettlsquotes.html
BEGIN {
    FS = "\t"
    print "<html>"
    print "<head>"
    print "<title>Goettl's quotes</title>"
    print "</head>"
    print "<body>"
    print "<table>"
}

/^10/{
    print "<tr>"
    for(j=1; j<=NF; j++) {
        if(j != 3) {
            print "<td>" $j "</td>"
        }
    }
    print "</tr>"
}

END {
    print "</table>"
    print "</body>"
    print "</html>"
}