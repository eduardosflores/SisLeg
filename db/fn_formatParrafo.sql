CREATE DEFINER=`root`@`localhost` FUNCTION `formatParrafo`(parrafo text) RETURNS text CHARSET utf8mb4
BEGIN
	#declare pgph_style varchar(111) default '<p style="text-align: justify;margin-top: 0">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
	RETURN replace(replace(replace(parrafo,'<p><br>','<p>'),'<br><\/p>','<\/p>'),'<br>','<p></p>');
END