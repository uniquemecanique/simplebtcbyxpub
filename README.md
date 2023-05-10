# simplebtcbyxpub
<div align="center"><pre>Minimalistic and simple Bitcoin address generation by xpub. Use with <b>python</b> or <b>php</b></pre></div>
<div align="center">My first project on github ever</div>
<h1>Simple Bitcoin address generation by xpub (public key)</h1>

1. Installing requirements

	<code>sudo apt update && apt install python3 python3-pip -y</code><br>
	<code>sudo apt-get install python3-pip</code><br>
	<code>pip3 install bitcoin</code><br>
	<code>pip install git+https://github.com/primal100/pybitcointools.git@master</code><br>
	
	if errors, you can try: <code>bash requirements.sh</code> (not tested!)

2. CLI python usage

	1. <code>python3 btc_by_xpubindex.py</code>
		Please enter your xpub: [YOUR-XPUB]<br>
		Please enter the index number: [ANY-NUMBER]<br>
		[outputs address]
		
	2. <code>python3 list_by_xpub.py</code>
	
		Please enter your xpub: [YOUR-XPUB]<br>
		[outputs list of 100 btc addresses]
		
3. PHP usage

	1. if you dont have lamp (php, mysql) installed, use this simple line<br>
		<code>sudo apt install lamp-server^</code>
	
	2. copy all files to your local server e.g. /var/www/html/
	
	3. simply create config database using
		<code>bash create_config_db.sh</code>
	enter your database's username, password and give a name to a new db
	
	4. configure 'db.php' file.
	enter database's username, password and name of created db
	
	5. goto localhost from ur favorite browser
	
	6. Index page will show first bitcoin address. Updating page will output next address.

	7. goto localhost/manual_input.php to manualy enter xpub and select address, you wanna see.<br>
	<div align="center"><b>!!! remember that 0 = first address !!!</b></div>
	
	8. To use it for assignment personal address on user registration:
  1. edit <code>index.php</code> : comment, or remove this line: <pre>echo $xpub_address;</pre>
		2. I guess, your index file should content anything other: you should rename source <code>index.php</code>, e.g. <code>getbtc.php</code><br>
			<code>sudo mv index.php getbtc.php</code><br>
		3. use <code>require_once('getbtc.php');</code> in your registration file and $xpub_address should output a new address every time.


<div align="center"><pre>Like my code? Buy me a ☕️: <a href="bitcoin:bc1qqzun677gyh4w856zkztt7jkzv87ca305439cly" target="_blank">bc1qqzun677gyh4w856zkztt7jkzv87ca305439cly</a></pre>
<img src="https://chart.googleapis.com/chart?cht=qr&chl=bitcoin:bc1qqzun677gyh4w856zkztt7jkzv87ca305439cly&chs=300x300&choe=UTF-8" alt="Bitcoin QR code">

</div>
<b>Thank you!</b>
