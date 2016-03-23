class	users::admin	{
users::config	{	'Ram':	}
users::config	{	'Shyam':
group	=>	'student',
}
users::config	{	'aaron':
group	=>	'student',
}
group	{	'student':
ensure	=>	present,
}
}
