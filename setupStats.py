import sqlite3
conn = sqlite3.connect('/usr/share/seec/seecStats.db')
conn.execute('''CREATE TABLE STATS
		(ID INT PRIMARY KEY NOT NULL,
		AGE INT NOT NULL,
		GENDER INT NOT NULL);''')
