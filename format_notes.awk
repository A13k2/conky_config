BEGIN{
	OFS="";
	ORS="";
	FS=":|,";
	RS="}, {";
	print "ID ${alignc 2000}Project ${alignr 0}Description \n"; # print header, line aligns for looks
}
{
	if ($2 > 0) {		# check if id is bigger than 0, finished tasks are saved with id 0
		if ($11 ~ "start")
			STARTED=" *"
		else
			STARTED=" "
		if ($9 ~ "project")
			PROJECT=$10
		else
			PROJECT="None"
		print "${color" int($16) "} " $2 STARTED # get code from $16 (urgency), int because urgency is float
		print "${alignc 2000} " PROJECT " "
		print "${alignr 0} ${color9} " $4 "\n"    # print description
	}
}
