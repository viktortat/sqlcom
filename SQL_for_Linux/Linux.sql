-- ���������� �����
	ls
	ls -l -- use a long listing format (����������� � ������ ��������)
		-r -- ���������� � �������� �������
		-t -- ����������� �� ������������� ���������� ������.
		
-- ������� � ������ �����
	cd
	
	-- ������� �� ����� ����
		cd ..
	
-- �����������/copy
	cp (�����������)
		- cp /home/janet/clients/filename.sql /home/nick/customers

-- ������ ����������� �������, ������ �������� �������
	man ls

-- �������� �����
	Ctrl+L	

-- �������/������ � �������
	more filename (���������� ���������� �����)	
	less ������ more
	tail -100 -- ������� ��������� 100 ����� �� �����
		tail -n 10 errorlog  -f -- ������� 10 ��������� ����� � ��������� ���������
	cat -- ������� �� ����� ���������� �� �����
	
-- ��������� �������� vi
	vi /home/text.txt
		i -- ����� �������
		:q! -- ��������� �������������� ����� � ������� ���� ���������. ��� ������� ����� ����� ������������ ��� ������������� ����������.
		:w -- �������� ���� (���������� �� ����, ��� �� �� ������� ��� ���). 
		ZZ  -- �������� ����, ���� �� ��� �������, � ����� ����� �� ���������.
		:e! -- ������������� ������� ����� ����� �� �����. 
		:g/^$/d -- �������� ���� ������ �����. ^ - ������ ������, $ - ����� ������, /d - ������� � ����������, :g - �����
		:%g/^--/d -- ������� ��� ������ ��� ���� ����� �������
		:%s/^--/d -- ������� ������ ����������
		
-- ������� ������� �������, � ��������� ����
	pwd
	
-- �����
	-- � �����
		-- grep
			| grep ��� ���� � ������ -- ����������� ������ ������ � ������� �������
			| grep "..." -A 5 -- 5 ����� ����� ���������� ��������
			| grep "..." -B 5 -- 5 ����� �� ���������� ��������
			
			-- -l 
				- Ignore case distinctions in both the PATTERN and the input files.
		
		-- egrep			
			| egrep "log|backup" -- ��� ����������� ������ ��������� �������� �����
		
	-- �� �������� �������/find
		- find ����� ��������� ����� ������� � ���������� ������
		find / -name file1 -- ������ ����� ��� ���������� ������� � /
		find / -user user1 -- ������ ����� � ���������� ����������� � user1
		find /home/user1 -name \*.bin -- ������ ����� � ����������� .bin � ���������� /home/user1
		find /usr/bin -type f -atime +100 -- ������ �������� �����, ������� �� ����������� 100 ����
		find /usr/bin -type f -mtime -10 -- ����� ����� ��������� ��� ���������� �� 10 ����
		find / -name \*.deb -exec chmod 755 '{}' \; --����� ����� � ����������� .deb � �������� ����� �������
		locate \*.ps ����� ����� � ����������� .ps
		whereis halt �������� ���� � ��������� ���������, � ������ ������ halt
		which halt �������� ������ ���� � ��������� ���������, � ������ ������ halt	
	
-- ����
	/var/log
	/var/log/messages - ��������
	cd /tmp/

-- ������������ / restart
	shutdown -r
	
-- ������ ��� �����
	file /ggegerg/geheah.txt
	
-- ����� �������� ���������
	lsof -p 52783 | grep ip -- ����� ����� ������� ���������
	
		
-- �����
	-- ������� �����	
		mkdir $HOME/diag	
		
	-- ����� �������
		-- �������� ����� ������� �� �����
			ls -dl /home/folder
			
		-- �������� ��������� �����/�����
			chown -R vasja:users /home/vasja
			
		-- �������� ������ �����/�����
			chgrp db2iadm3 /mnt/data/FLC2E
			
		-- ������ ������ ������������
			id -a db2inst1
			
		-- chmod		
			- � �����-����� ����� ���� ������ 1 ��������, 1 ������ � ��� ���������
			- ��������� ����� (u);
			- ������ �������������, �������� � ������ ��������� (g);
			- ���� ������ ������������� (o);
			
			-- �������� ������� ������ ����
				- Read (4)
				- WRITE (2)
				- EXECUTE (1)
			
			- ������
				1. -rwxrwxrwx(-r-xr-xr-x) (�� ���� ���� �� ����� ������ �����-�� ��� ����, �� ������ -) -- �� 3 ������� �� ������ ��� ���������� (u + g + o)
				
			-- ���� �����
				chmod ugo+rwx /u02/seconddb -- ���� ��� ��������� ����� �� �����
				chmod g+rw file1				
				chmod +rw file1 (���� ����� ReadWrite ����)
			
			-- ������ �����
				chmod go-r file1 (������� ����� �� ������ � ������ � ���� ���������)
				chmod -R o-rwx ~/linuxrussia.com/ (���������� ������ ��� ����� � ������������� ������ �����)
				
	-- ��������� ��������� ��� ������
		sudo chown ���_������_���������:���_�����_������ ���_�����_���_����������
		sudo chown :���_�����_������ ���_�����_���_���������� (������ ������)
		sudo chown ���_������_��������� ���_�����_���_���������� (������ ��������)
		sudo chown -R ���_������_���������:���_�����_������ ���_�����_���_���������� (��� �� ����� ������������ ��������)
	
	
	-- �������� ������/�����/�������
		rm -r /home/username/
		
-- ���������� �� ��������/�� ���� ��������	
	ps - �������� ���� ������� (���������� ��� �������� ��� ��������)
	ps -axu (��� ��������)
	ps -p 1 -- ������� ������� � ��������� SPID
	echo $$ (������� ���� �������)
	ps --ppid spid_������� (�������� �������) -- ����� �������� ��� ��������� �� ������� ������� ������
	ps -ef | grep sysc (db2sysc - ������� db2) -- ���������� �������� � ��������
	
-- kill
	- ���������� ���������� ������� terminate, ��� �� ������ ��������� ��������� �������. -9 ������������� ������� �������
	kill -9 SPID -- ������������� ����� �������
	
	killall name_process -- ����� �� ��� �������� � �������� ������
	killall -s 9 name_process -- ������������� �����
	
	sudo kill 123 -- ���� �� ������� ����

-- �������, hostory
	- ���������� ������� �������� �� ������ � ������� ������, � ������
	history 10 -- 10 ��������� ������
	history -c -- �������� �������
	history | grep ...
	
	-- ��������� ����������/repeat
		!! - ��������� ��������� �������
		!-1 - ��������� ������������� �������
		!10 -- ��������� 10 �������
		ctrl + p -- �������� ��������� �������
		
	-- ������������� �������
		ctrl + r ����� ����� ������ ������ ������	


-- ************************	
-- ***** ������������ *****
-- ************************

-- ��� �������� ������������
	whoami
	
-- ������ �������� ������������
	groups
		
-- ������������ ������������
	su - root (���� �� ����)
	
	- ������� ������������
		useradd name
	
	- ������ �������� ����������� �� �������� �������������, ����� ����� ����� ���������
		useradd -m name
		
	- ������ ������ ������������
		passwd user_name
		
	- ��� ���������� � ������� ��������
		/etc/passwd
		
	- ������� ������������
		userdel username 
		
		-- ���� ������������ �������
			pgrep -u test
			ps -fp $(pgrep -u test)
			killall -KILL -u test
			userdel -r test
		
	- ������ ���� �������������
		cat /etc/passwd
		cat /etc/passwd | awk '/bash/{print}' (������� �� ��������� �������������)
	
	-- ������ �������� �������������
		who
	
	-- ��������� ������������/logout
		pkill -KILL -u db2inst2
	
-- .bash_history

-- ********************************
-- ***** ���������� � ������� *****
-- ********************************

-- ������ � �������
	env
	
-- ������ ������������ �������
	cat /proc/version
	
-- ���������� � CPU
	cat /proc/cpuinfo
		-- ���������� �����������
			cat /proc/cpuinfo | grep processor | wc -l
		-- ���������� ����
			cat /proc/cpuinfo | grep 'core id'
	
-- ���������� � RAM
	 cat /proc/meminfo
	 
-- ����� ����������/����� ���������� ����������� ������ ��� ���
	lscpu
	 
-- ip adrecc/ipconfig
	ifconfig
	
	cd /etc/ 
	vi hosts
	
	-- ����� �������/��������������
		����� ������ i
		
	-- ������
		:q! (��� ����������)
		:wq (� �����������)
	
-- ���������� � ������� (������ � ��)
	uname -a

-- ���������� ���������
	- �������
		a = qqq
		
	- �������
		echo $alias

	- �������
		unset a
	
	-- �������� ���������� ���������
		set
		env
	
-- �������� ������
	- ����������� ����� ������
	- ���� ���������� � ���������
	alias
		.bash_profile -- ���������� ������������ ������������/�� ������������ ������
		
	- �������� alias
		alias qq='call 2015'
		
	- ������� alias
		unalias qq
	
-- ���������� ������ ������/����� �� ������
	df -h
	df -hl /test/filename
	
	-- ����� ������ � �����
		du -sh .
		du -h /test/filename
		
-- netstat
	���������� � ����
	-- ���������
		����� ����� �������� -p, ����� ����� ������������ SPID
		netstat -na -- ������� ������� IP-����� ������ �����, ����� ����� ������ ����� �����, UID ������ ����� ������������.
		netstat -a -- ����������� ��� �����
		netstat -at -- ����������� ��� TCP �����
		netstat -au -- ����������� ��� UDP �����
		netstat -l -- ����������� ��� �������������� �����
		netstat -lt -- ����������� ��� �������������� TCP �����
		netstat -lu -- ����������� ��� �������������� UDP �����
		netstat -lx -- ����������� �������������� UNIX ������
		netstat -s -- �������� ���������� ���� ������
		netstat -st -- �������� ���������� ���� TCP ������
		netstat -su -- �������� ���������� ���� UDP ������
		netstat -c -- ����� ���������� ����������
		netstat -an | grep ':80' -- ����� ��������� ���������� ����������� ����
		netstat -i -- ������ ���� ������� �����������
		netstat -ie -- ������ ���� ������� ����������� (����������� ����������)
		netstat -lnptux -- ��������, ������������, �������
	
-- top
	���������� �������� �������, ��-��������� �� CPU
	����� �� �� ����� ��� � vmstat
	
	-- ���������
		k � ������ SPID
		top -u db2inst1 -- �������� ����������� �����������
		top -p 123 -- ���������� �� SPID
		top ����� ������� 1, ����� �������� �������� �� CPU
		top ����� d > ������ ����� ����������
		top -n 2 -- ����� 3 ���������� ����� �� top
		top ����� shift+A ������� ������ � ����� ����������������� ����
		
-- iotop
	iotop -o -- �������� ������ �������� ��������
	iotop -o -a -- �������� ��������� ���������� �� ����� ���������
	
-- vmstat
	���������� ������ � �������� �������
	vmstat 1 -- ������ 1 ������� ��������� ������
	vmstat 2 5 -- ������ 2 �������, ����� 5 ��������
	vmstat -s -- ������ ������ ������ ����������
		-- Proc
		r � ���������� ��������� � ������� �� ���������� ����������� (���� �������� > 0 � ������ �������� �� ���������);
		b � ���������� ���������, ��������� �������� I/O (���� �������� > 0 � ������ �������� �� ����� �/��� �������� �������).
		-- Memory
		swpd � ���������� ������, ������������ � swap;
		free � ��������� ������ (��� ����� ������, ������� ������� � �����, ����, ��� ������� free � ������� Mem:free, ��. ���>>>);
		buff � ������ ������ (��. ��� ��);
		cache � ��� (��. ��� ��);		
		-- SWAP
		si (swap in) � ���������� ������ � �������, ������� ������� ��������� �� ������� ��� ����� swap � ������; -- � ������, �������� ����� ������ ���� ����� ���� ���, �� ������� ����, �� ����� 10 ������/�������.
		so (swap out) � � ��������, ���������� ������ � �������, ������� ������� ���������� �� ������ � swap. -- � ������, �������� ����� ������ ���� ����� ���� ���, �� ������� ����, �� ����� 10 ������/�������.
		-- IO
		bi (blocks in) � ���������� ������ � �������, ��������� � �����;
		bo (blocks out) � ���������� ������ � �������, ���������� �� ����;
		-- CPU
		us (user time) � % ������� CPU, ������� �� ���������� ������������������ (�� ������������� ����) �����;
		sy (system time) � % ������� CPU, ������� �� ���������� ����� ���� (����, I/O ������, ���������� � �.�.);
		id (idle) � % ������� � ����������� (�������� �����);
		wa � % ������� CPU, ������� �� �������� �������� I/O;
	
-- iostat
	iostat -xk -t 10 -- ��������� ������ ������ 10 ������
	-- ��������
		%u/%util -- ����� ��������
	
-- ���������
	-- ���������
		tar -cvf test.tar test
		���
		tar -zcvf tast.tar.gz test
		���
		gzip test  � �������, ������� gz � ������! ����
	-- ����������:
		tar -tvf test.tar
		tar -ztvf test.tar.gz
	-- �����������:
		tar -xvf test.tar
		tar -zxvf test.tar.gz
		gunzip test.gz  � ��������� � ������! test.gz