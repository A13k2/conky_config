BEGIN{
	OFS="";
	ORS="";
	FS=":|,";
	RS="}, {";
	print "ID ${alignc 2000}Project ${alignr 0}Description \n"; # print header line aligns for looks
}
{if ($2 > 0) {		# check if id is bigger than 0, finished tasks are daved with id 0
	print "${color" int($16) "} " $2 " ";  # get code from $16 (urgency), int because urgency is float
	if ($9="project") 		#if project exists print it, if not print None
		{print "${alignc 2000} " $10 " "}
	else
		print "${alignc 2000} " "None ";
	print "${alignr 0} ${color9} " $4 "\n"}			# print description
}
