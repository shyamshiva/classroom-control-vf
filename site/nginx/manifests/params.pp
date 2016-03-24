class	nginx::params	{
case	$::osfamily	{
'redhat':	{
$filename="index.html",
}
'windows'	:	{
$filename="index2.html",
}
}
}
