#
# Table structure for table 'tx_cfcleague_group'
#
CREATE TABLE tx_cfcleague_group (
	uid int(11) NOT NULL auto_increment,
	pid int(11) DEFAULT '0' NOT NULL,
	tstamp int(11) DEFAULT '0' NOT NULL,
	crdate int(11) DEFAULT '0' NOT NULL,
	cruser_id int(11) DEFAULT '0' NOT NULL,
	sorting int(10) DEFAULT '0' NOT NULL,
	deleted tinyint(4) DEFAULT '0' NOT NULL,
	hidden tinyint(4) DEFAULT '0' NOT NULL,
	starttime int(11) DEFAULT '0' NOT NULL,
	fe_group int(11) DEFAULT '0' NOT NULL,
	name varchar(255) DEFAULT '' NOT NULL,
	
	PRIMARY KEY (uid),
	KEY parent (pid)
);



#
# Table structure for table 'tx_cfcleague_saison'
#
CREATE TABLE tx_cfcleague_saison (
	uid int(11) NOT NULL auto_increment,
	pid int(11) DEFAULT '0' NOT NULL,
	tstamp int(11) DEFAULT '0' NOT NULL,
	crdate int(11) DEFAULT '0' NOT NULL,
	cruser_id int(11) DEFAULT '0' NOT NULL,
	sorting int(10) DEFAULT '0' NOT NULL,
	deleted tinyint(4) DEFAULT '0' NOT NULL,
	hidden tinyint(4) DEFAULT '0' NOT NULL,
	name varchar(255) DEFAULT '' NOT NULL,
	halftime int(11) DEFAULT '0' NOT NULL,
	
	PRIMARY KEY (uid),
	KEY parent (pid)
);



#
# Table structure for table 'tx_cfcleague_competition'
#
CREATE TABLE tx_cfcleague_competition (
	uid int(11) NOT NULL auto_increment,
	pid int(11) DEFAULT '0' NOT NULL,
	tstamp int(11) DEFAULT '0' NOT NULL,
	crdate int(11) DEFAULT '0' NOT NULL,
	cruser_id int(11) DEFAULT '0' NOT NULL,
	sorting int(10) DEFAULT '0' NOT NULL,
	deleted tinyint(4) DEFAULT '0' NOT NULL,
	hidden tinyint(4) DEFAULT '0' NOT NULL,
	name varchar(255) DEFAULT '' NOT NULL,
	short_name varchar(150) DEFAULT '' NOT NULL,
	internal_name varchar(255) DEFAULT '' NOT NULL,
	agegroup int(11) DEFAULT '0' NOT NULL,
	saison int(11) DEFAULT '0' NOT NULL,
	type int(11) DEFAULT '0' NOT NULL,
	teams blob NOT NULL,
	point_system int(11) DEFAULT '0' NOT NULL,
	match_keys text NOT NULL,
	table_marks text NOT NULL,

	match_parts tinyint(4) DEFAULT '0' NOT NULL,
	parent int(11) DEFAULT '0' NOT NULL,

	PRIMARY KEY (uid),
	KEY parent (pid)
);


#
# Table structure for table 'tx_cfcleague_competition_penalty'
# Vergabe von Strafen für Teams eines Wettbewerbs
# Es können Punkte und Tore vergeben werden
# Es kann eine feste Platzierung festgelegt werden (Entzug der Lizenz)
#
CREATE TABLE tx_cfcleague_competition_penalty (
	uid int(11) NOT NULL auto_increment,
	pid int(11) DEFAULT '0' NOT NULL,
	tstamp int(11) DEFAULT '0' NOT NULL,
	crdate int(11) DEFAULT '0' NOT NULL,
	cruser_id int(11) DEFAULT '0' NOT NULL,
	sorting int(10) DEFAULT '0' NOT NULL,
	deleted tinyint(4) DEFAULT '0' NOT NULL,
	hidden tinyint(4) DEFAULT '0' NOT NULL,

	competition int(11) DEFAULT '0' NOT NULL,
	team int(11) DEFAULT '0' NOT NULL,
	game int(11) DEFAULT '0' NOT NULL,
	comment text NOT NULL,
	matches int(11) DEFAULT '0' NOT NULL,
	wins int(11) DEFAULT '0' NOT NULL,
	draws int(11) DEFAULT '0' NOT NULL,
	loses int(11) DEFAULT '0' NOT NULL,
	goals_pos int(11) DEFAULT '0' NOT NULL,
	goals_neg int(11) DEFAULT '0' NOT NULL,
	points_pos int(11) DEFAULT '0' NOT NULL,
	points_neg int(11) DEFAULT '0' NOT NULL,
	static_position int(11) DEFAULT '0' NOT NULL,

	PRIMARY KEY (uid),
	KEY parent (pid)
);


#
# Table structure for table 'tx_cfcleague_club'
#
CREATE TABLE tx_cfcleague_club (
	uid int(11) NOT NULL auto_increment,
	pid int(11) DEFAULT '0' NOT NULL,
	tstamp int(11) DEFAULT '0' NOT NULL,
	crdate int(11) DEFAULT '0' NOT NULL,
	cruser_id int(11) DEFAULT '0' NOT NULL,
	sorting int(10) DEFAULT '0' NOT NULL,
	deleted tinyint(4) DEFAULT '0' NOT NULL,
	hidden tinyint(4) DEFAULT '0' NOT NULL,

	name varchar(150) DEFAULT '' NOT NULL,
	short_name varchar(100) DEFAULT '' NOT NULL,
	dam_logo int(11) DEFAULT '0' NOT NULL,
	logo blob NOT NULL,
	address int(11) DEFAULT '0' NOT NULL,

	PRIMARY KEY (uid),
	KEY parent (pid)
);


#
# Table structure for table 'tx_cfcleague_teams'
#
CREATE TABLE tx_cfcleague_teams (
	uid int(11) NOT NULL auto_increment,
	pid int(11) DEFAULT '0' NOT NULL,
	tstamp int(11) DEFAULT '0' NOT NULL,
	crdate int(11) DEFAULT '0' NOT NULL,
	cruser_id int(11) DEFAULT '0' NOT NULL,
	sorting int(10) DEFAULT '0' NOT NULL,
	deleted tinyint(4) DEFAULT '0' NOT NULL,
	hidden tinyint(4) DEFAULT '0' NOT NULL,
	dummy tinyint(4) DEFAULT '0' NOT NULL,
	club int(11) DEFAULT '0' NOT NULL,
	name varchar(100) DEFAULT '' NOT NULL,
	short_name varchar(100) DEFAULT '' NOT NULL,
	coaches blob NOT NULL,
	players blob NOT NULL,
	supporters blob NOT NULL,
	dam_images int(11) DEFAULT '0' NOT NULL,
	dam_logo int(11) DEFAULT '0' NOT NULL,

	comment text NOT NULL,
	players_comment text NOT NULL,
	coaches_comment text NOT NULL,
	supporters_comment text NOT NULL,
	link_report tinyint(4) DEFAULT '0' NOT NULL,

	PRIMARY KEY (uid),
	KEY parent (pid)
);



#
# Table structure for table 'tx_cfcleague_games'
#
CREATE TABLE tx_cfcleague_games (
	uid int(11) NOT NULL auto_increment,
	pid int(11) DEFAULT '0' NOT NULL,
	tstamp int(11) DEFAULT '0' NOT NULL,
	crdate int(11) DEFAULT '0' NOT NULL,
	cruser_id int(11) DEFAULT '0' NOT NULL,
	sorting int(10) DEFAULT '0' NOT NULL,
	deleted tinyint(4) DEFAULT '0' NOT NULL,
	hidden tinyint(4) DEFAULT '0' NOT NULL,
	match_no varchar(5) DEFAULT '' NOT NULL,
	home int(11) DEFAULT '0' NOT NULL,
	guest int(11) DEFAULT '0' NOT NULL,
	competition int(11) DEFAULT '0' NOT NULL,
	round int(11) DEFAULT '0' NOT NULL,
	round_name varchar(100) DEFAULT '' NOT NULL,
	stadium varchar(200) DEFAULT '' NOT NULL,
	status int(11) DEFAULT '0' NOT NULL,

	referee int(11) DEFAULT '0' NOT NULL,
	assists blob NOT NULL,
	coach_home int(11) DEFAULT '0' NOT NULL,
	coach_guest int(11) DEFAULT '0' NOT NULL,
	players_home blob NOT NULL,
	players_guest blob NOT NULL,
	substitutes_home blob NOT NULL,
	substitutes_guest blob NOT NULL,
	system_home varchar(100) DEFAULT '' NOT NULL,
	system_guest varchar(100) DEFAULT '' NOT NULL,

	goals_home_1 int(11) DEFAULT '0' NOT NULL,
	goals_guest_1 int(11) DEFAULT '0' NOT NULL,
	goals_home_2 int(11) DEFAULT '0' NOT NULL,
	goals_guest_2 int(11) DEFAULT '0' NOT NULL,
	goals_home_3 int(11) DEFAULT '0' NOT NULL,
	goals_guest_3 int(11) DEFAULT '0' NOT NULL,
	goals_home_4 int(11) DEFAULT '0' NOT NULL,
	goals_guest_4 int(11) DEFAULT '0' NOT NULL,

	date int(11) DEFAULT '0' NOT NULL,
	link_report tinyint(4) DEFAULT '0' NOT NULL,
	link_ticker tinyint(4) DEFAULT '0' NOT NULL,
	game_report_author varchar(100) DEFAULT '' NOT NULL,
	game_report text NOT NULL,
	visitors int(11) DEFAULT '0' NOT NULL,

        dam_images int(11) DEFAULT '0' NOT NULL,
        dam_media int(11) DEFAULT '0' NOT NULL

        is_extratime tinyint(3) DEFAULT '0' NOT NULL,
	goals_home_et int(11) DEFAULT '0' NOT NULL,
	goals_guest_et int(11) DEFAULT '0' NOT NULL,

        is_penalty tinyint(3) DEFAULT '0' NOT NULL,
	goals_home_ap int(11) DEFAULT '0' NOT NULL,
	goals_guest_ap int(11) DEFAULT '0' NOT NULL,
	
	PRIMARY KEY (uid),
	KEY parent (pid)
);

#
# Table structure for table 'tx_cfcleague_profiles'
#
CREATE TABLE tx_cfcleague_profiles (
	uid int(11) NOT NULL auto_increment,
	pid int(11) DEFAULT '0' NOT NULL,
	tstamp int(11) DEFAULT '0' NOT NULL,
	crdate int(11) DEFAULT '0' NOT NULL,
	cruser_id int(11) DEFAULT '0' NOT NULL,
	sorting int(10) DEFAULT '0' NOT NULL,
	deleted tinyint(4) DEFAULT '0' NOT NULL,
	hidden tinyint(4) DEFAULT '0' NOT NULL,
	first_name varchar(50) DEFAULT '' NOT NULL,
	last_name varchar(70) DEFAULT '' NOT NULL,
	link_report tinyint(4) DEFAULT '0' NOT NULL,
        dam_images int(11) DEFAULT '0' NOT NULL,
	birthday int(11) DEFAULT '0' NOT NULL,
	home_town varchar(150) DEFAULT '' NOT NULL,
	native_town varchar(150) DEFAULT '' NOT NULL,
	nationality varchar(100) DEFAULT '' NOT NULL,
	height int(11) DEFAULT '0' NOT NULL,
	weight int(11) DEFAULT '0' NOT NULL,
	position varchar(150) DEFAULT '' NOT NULL,
	duration_of_contract int(11) DEFAULT '0' NOT NULL,
	start_of_contract varchar(150) DEFAULT '' NOT NULL,
	email varchar(255) DEFAULT '' NOT NULL,
	nickname varchar(150) DEFAULT '' NOT NULL,
	summary text NOT NULL,
	description text NOT NULL,
	
	PRIMARY KEY (uid),
	KEY parent (pid)
);

#
# Table structure for table 'tx_cfcleague_saison'
#
CREATE TABLE tx_cfcleague_match_notes (
	uid int(11) NOT NULL auto_increment,
	pid int(11) DEFAULT '0' NOT NULL,
	tstamp int(11) DEFAULT '0' NOT NULL,
	crdate int(11) DEFAULT '0' NOT NULL,
	cruser_id int(11) DEFAULT '0' NOT NULL,
	sorting int(10) DEFAULT '0' NOT NULL,
	deleted tinyint(4) DEFAULT '0' NOT NULL,
	hidden tinyint(4) DEFAULT '0' NOT NULL,

	minute int(11) DEFAULT '0' NOT NULL,
	extra_time tinyint(4) DEFAULT '0' NOT NULL,
	game int(11) DEFAULT '0' NOT NULL,
	type int(11) DEFAULT '0' NOT NULL,
	player_home int(11) DEFAULT '0' NOT NULL,
	player_guest int(11) DEFAULT '0' NOT NULL,
	comment text NOT NULL,

	
	PRIMARY KEY (uid),
	KEY parent (pid)
);




