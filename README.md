Jungle Cat Software Website [![Build Status](https://jenkins.brwyatt.net/job/JungleCatSoftware.com/badge/icon)](https://jenkins.brwyatt.net/job/JungleCatSoftware.com/)
===========================
Dev Build: [![Build Status](https://jenkins.brwyatt.net/job/JungleCatSoftware.com%20-%20DEV/badge/icon)](https://jenkins.brwyatt.net/job/JungleCatSoftware.com%20-%20DEV/)

Website code for [junglecatsoftware.com](http://junglecatsoftware.com/ "Jungle Cat Software")

Database Config
---------------
The database configuration file ( protected/config/database.php ) must be provided separately, as it contains username and password information. It should return a connection array, and look something like this:

<pre>
&lt;?php
return array(
			'connectionString' =&gt; 'mysql:host=HOSTNAME;dbname=DB_NAME',
			'emulatePrepare' =&gt; true,
			'username' =&gt; 'USERNAME',
			'password' =&gt; 'PASSWORD',
			'charset' =&gt; 'utf8',
			'tablePrefix' =&gt; 'tbl_',
		);
?&gt;
</pre>
