BEGIN{
	OFS="";
	ORS="";
	FS=":|,";
	RS="}, {";
	print "ID ${alignc 2000}Project ${alignr 0}Description \n";
}
{if ($2 > 0) {
	print "${color" int($16) "} " $2 " ";
	if ($9="project") 
		{print "${alignc 2000} " $10 " "}
	else
		print "${alignc 2000} " "None ";
	print "${alignr 0} ${color9} " $4 "\n"}
}
