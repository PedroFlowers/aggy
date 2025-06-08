-- phpMyAdmin SQL Dump
-- version 2.11.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Czas wygenerowania: 30 Lip 2009, 09:51
-- Wersja serwera: 5.0.51
-- Wersja PHP: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Baza danych: `sparking`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla  `accounts`
--

CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int(11) unsigned NOT NULL default '0',
  `password` varchar(32) collate latin1_general_ci NOT NULL default '',
  `premDays` int(11) NOT NULL default '0',
  `premEnd` int(11) NOT NULL default '0',
  `email` varchar(50) collate latin1_general_ci NOT NULL default '',
  `rlname` varchar(45) collate latin1_general_ci NOT NULL default '',
  `location` varchar(45) collate latin1_general_ci NOT NULL default '',
  `recovery_key` varchar(20) collate latin1_general_ci NOT NULL,
  `hide` tinyint(1) NOT NULL default '0',
  `hidemail` tinyint(1) NOT NULL default '0',
  KEY `accno` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Zrzut danych tabeli `accounts`
--

INSERT INTO `accounts` (`id`, `password`, `premDays`, `premEnd`, `email`, `rlname`, `location`, `recovery_key`, `hide`, `hidemail`) VALUES
(1, '1', 0, 1248691567, '', '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla  `addons`
--

CREATE TABLE IF NOT EXISTS `addons` (
  `player` int(20) NOT NULL default '0',
  `outfit` int(10) NOT NULL default '0',
  `addon` int(10) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Zrzut danych tabeli `addons`
--

INSERT INTO `addons` (`player`, `outfit`, `addon`) VALUES
(3, 129, 1),
(3, 128, 3),
(3, 121, 1),
(7, 128, 3),
(7, 3, 0),
(11, 128, 3),
(12, 128, 3),
(3, 120, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla  `bans`
--

CREATE TABLE IF NOT EXISTS `bans` (
  `type` int(11) NOT NULL default '0' COMMENT 'this field defines if its ip, account, player, or any else ban',
  `ip` int(10) unsigned NOT NULL default '0',
  `mask` int(10) unsigned NOT NULL default '4294967295',
  `player` int(10) unsigned NOT NULL default '0',
  `account` int(10) unsigned NOT NULL default '0',
  `time` int(10) unsigned NOT NULL default '0',
  `reason` varchar(25) collate latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Zrzut danych tabeli `bans`
--


-- --------------------------------------------------------

--
-- Struktura tabeli dla  `blessings`
--

CREATE TABLE IF NOT EXISTS `blessings` (
  `player` int(20) NOT NULL default '0',
  `id` int(11) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin2;

--
-- Zrzut danych tabeli `blessings`
--

INSERT INTO `blessings` (`player`, `id`) VALUES
(3, 5),
(3, 4),
(3, 3),
(3, 2),
(3, 1),
(10, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla  `deathlist`
--

CREATE TABLE IF NOT EXISTS `deathlist` (
  `player` int(21) NOT NULL default '0',
  `killer` varchar(30) collate latin1_general_ci NOT NULL default '',
  `level` int(21) NOT NULL default '0',
  `date` int(21) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Zrzut danych tabeli `deathlist`
--

INSERT INTO `deathlist` (`player`, `killer`, `level`, `date`) VALUES
(7, 'Dwarf Guard', 14, 1181404515),
(9, 'Hero', 6, 1181333273),
(10, 'Rat', 1, 0),
(10, 'Rat', 1, 0),
(10, 'Rat', 1, 0),
(10, 'Rat', 2, 0),
(10, 'Rat', 1, 0),
(12, 'Roker', 2, 1182272443),
(12, 'Roker', 1, 1182271555),
(11, 'Crusader', 89, 1248370903),
(11, 'Crusader', 83, 1248370521),
(11, 'Robotron', 39, 1248368214),
(11, 'Roker', 9, 1181755639);

-- --------------------------------------------------------

--
-- Struktura tabeli dla  `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate latin1_general_ci NOT NULL default '' COMMENT 'group name',
  `flags` bigint(20) unsigned NOT NULL default '0',
  `access` int(11) NOT NULL default '0',
  `maxdepotitems` int(11) NOT NULL default '0',
  `maxviplist` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

--
-- Zrzut danych tabeli `groups`
--


-- --------------------------------------------------------

--
-- Struktura tabeli dla  `guilds`
--

CREATE TABLE IF NOT EXISTS `guilds` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate latin1_general_ci NOT NULL default '' COMMENT 'guild name - nothing else needed here',
  `ownerid` int(11) NOT NULL default '0',
  `creationdata` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

--
-- Zrzut danych tabeli `guilds`
--


-- --------------------------------------------------------

--
-- Struktura tabeli dla  `guild_ranks`
--

CREATE TABLE IF NOT EXISTS `guild_ranks` (
  `id` int(11) NOT NULL auto_increment,
  `guild_id` int(11) NOT NULL default '0' COMMENT 'guild',
  `name` varchar(255) collate latin1_general_ci NOT NULL default '' COMMENT 'rank name',
  `level` int(11) NOT NULL default '0' COMMENT 'rank level - leader, vice, member, maybe something else',
  PRIMARY KEY  (`id`),
  KEY `guild_id` (`guild_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

--
-- Zrzut danych tabeli `guild_ranks`
--


-- --------------------------------------------------------

--
-- Struktura tabeli dla  `houses`
--

CREATE TABLE IF NOT EXISTS `houses` (
  `id` int(11) NOT NULL auto_increment,
  `owner` int(11) NOT NULL default '0',
  `paid` int(10) unsigned NOT NULL default '0',
  `warnings` text collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=107 ;

--
-- Zrzut danych tabeli `houses`
--

INSERT INTO `houses` (`id`, `owner`, `paid`, `warnings`) VALUES
(1, 0, 0, '0'),
(2, 0, 0, '0'),
(3, 0, 0, '0'),
(4, 0, 0, '0'),
(6, 0, 0, '0'),
(7, 0, 0, '0'),
(8, 0, 0, '0'),
(9, 0, 0, '0'),
(10, 0, 0, '0'),
(14, 0, 0, '0'),
(18, 0, 0, '0'),
(19, 0, 0, '0'),
(20, 0, 0, '0'),
(21, 0, 0, '0'),
(22, 0, 0, '0'),
(23, 0, 0, '0'),
(24, 0, 0, '0'),
(25, 0, 0, '0'),
(26, 0, 0, '0'),
(27, 0, 0, '0'),
(28, 0, 0, '0'),
(29, 0, 0, '0'),
(30, 0, 0, '0'),
(31, 0, 0, '0'),
(32, 0, 0, '0'),
(33, 0, 0, '0'),
(34, 0, 0, '0'),
(35, 0, 0, '0'),
(36, 0, 0, '0'),
(37, 0, 0, '0'),
(38, 0, 0, '0'),
(39, 0, 0, '0'),
(40, 0, 0, '0'),
(41, 0, 0, '0'),
(42, 0, 0, '0'),
(43, 0, 0, '0'),
(46, 0, 0, '0'),
(47, 0, 0, '0'),
(48, 0, 0, '0'),
(49, 0, 0, '0'),
(50, 0, 0, '0'),
(51, 0, 0, '0'),
(52, 0, 0, '0'),
(53, 0, 0, '0'),
(54, 0, 0, '0'),
(55, 0, 0, '0'),
(56, 0, 0, '0'),
(57, 0, 0, '0');

-- --------------------------------------------------------

--
-- Struktura tabeli dla  `house_lists`
--

CREATE TABLE IF NOT EXISTS `house_lists` (
  `house_id` int(11) NOT NULL default '0',
  `listid` int(11) NOT NULL default '0',
  `list` text collate latin1_general_ci NOT NULL,
  KEY `house_id` (`house_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Zrzut danych tabeli `house_lists`
--


-- --------------------------------------------------------

--
-- Struktura tabeli dla  `players`
--

CREATE TABLE IF NOT EXISTS `players` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate latin1_general_ci NOT NULL default '',
  `account_id` int(11) NOT NULL default '0',
  `group_id` int(11) NOT NULL default '0' COMMENT 'users group',
  `access` int(10) NOT NULL default '0',
  `sex` int(10) unsigned NOT NULL default '0',
  `vocation` int(10) unsigned NOT NULL default '0',
  `experience` int(10) unsigned NOT NULL default '0',
  `level` int(10) unsigned NOT NULL default '1',
  `maglevel` int(10) unsigned NOT NULL default '0',
  `health` int(10) unsigned NOT NULL default '100',
  `healthmax` int(10) unsigned NOT NULL default '100',
  `mana` int(10) unsigned NOT NULL default '100',
  `manamax` int(10) unsigned NOT NULL default '100',
  `manaspent` int(10) unsigned NOT NULL default '0',
  `soul` int(10) unsigned NOT NULL default '0',
  `direction` int(10) unsigned NOT NULL default '0',
  `lookbody` int(10) unsigned NOT NULL default '136',
  `lookfeet` int(10) unsigned NOT NULL default '10',
  `lookhead` int(10) unsigned NOT NULL default '10',
  `looklegs` int(10) unsigned NOT NULL default '10',
  `looktype` int(10) unsigned NOT NULL default '10',
  `lookaddons` int(10) unsigned NOT NULL default '0',
  `posx` int(11) NOT NULL default '0',
  `posy` int(11) NOT NULL default '0',
  `posz` int(11) NOT NULL default '0',
  `cap` int(11) NOT NULL default '0',
  `lastlogin` int(10) unsigned NOT NULL default '0',
  `lastip` int(10) unsigned NOT NULL default '0',
  `save` tinyint(1) NOT NULL default '1',
  `conditions` blob NOT NULL COMMENT 'drunk, poisoned etc (maybe also food and redskull)',
  `redskulltime` int(10) unsigned NOT NULL default '0',
  `redskull` tinyint(1) NOT NULL default '0',
  `guildnick` varchar(255) collate latin1_general_ci NOT NULL default '' COMMENT 'additional nick in guild - mostly for web interfaces i think',
  `rank_id` int(11) NOT NULL default '0' COMMENT 'by this field everything with guilds is done - player has a rank which belongs to certain guild',
  `town_id` int(11) NOT NULL default '0' COMMENT 'old masterpos, temple spawn point position',
  PRIMARY KEY  (`id`),
  KEY `name` (`name`),
  KEY `account_id` (`account_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=13 ;

--
-- Zrzut danych tabeli `players`
--

INSERT INTO `players` (`id`, `name`, `account_id`, `group_id`, `access`, `sex`, `vocation`, `experience`, `level`, `maglevel`, `health`, `healthmax`, `mana`, `manamax`, `manaspent`, `soul`, `direction`, `lookbody`, `lookfeet`, `lookhead`, `looklegs`, `looktype`, `lookaddons`, `posx`, `posy`, `posz`, `cap`, `lastlogin`, `lastip`, `save`, `conditions`, `redskulltime`, `redskull`, `guildnick`, `rank_id`, `town_id`) VALUES
(1, 'Jozo', 1, 0, 5, 1, 0, 32, 1, 0, 100, 100, 100, 100, 0, 0, 2, 136, 10, 10, 10, 10, 0, 99, 189, 7, 0, 1248870371, 16777343, 1, 0x010001000002000000000388ee1a0010d7000000110b00000012581b00001378b40200fe, 0, 0, '', 0, 0),
(11, 'Yee', 1, 0, 0, 1, 20, 134876117, 202, 110, 72595, 72595, 64655, 64655, 3047388, 100, 2, 0, 0, 0, 0, 70, 0, 99, 189, 7, 10135, 1248691501, 16777343, 1, 0x010001000002000000000310a9140010d7000000110b00000012e8fd000013e8f70100fe010004000002ffffffff0350460000fe, 0, 0, '', 0, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla  `player_depotitems`
--

CREATE TABLE IF NOT EXISTS `player_depotitems` (
  `player_id` int(11) NOT NULL default '0',
  `depotid` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0' COMMENT 'any given range eg 0-100 will be reserved for depot lockers and all > 100 will be then normal items inside depots',
  `pid` int(11) NOT NULL default '0',
  `itemtype` int(11) NOT NULL default '0',
  `count` int(11) NOT NULL default '0',
  `attributes` blob,
  KEY `player_id` (`player_id`,`depotid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Zrzut danych tabeli `player_depotitems`
--

INSERT INTO `player_depotitems` (`player_id`, `depotid`, `sid`, `pid`, `itemtype`, `count`, `attributes`) VALUES
(1, 0, 102, 101, 2594, 1, ''),
(1, 0, 101, 1, 2589, 1, ''),
(7, 0, 163, 148, 2458, 1, ''),
(7, 0, 162, 148, 2398, 1, ''),
(8, 0, 105, 101, 2594, 1, ''),
(8, 0, 104, 101, 2152, 6, ''),
(6, 0, 118, 103, 1996, 1, ''),
(6, 0, 117, 102, 2594, 1, ''),
(6, 0, 116, 101, 2594, 1, ''),
(6, 0, 115, 101, 2389, 27, ''),
(6, 0, 114, 101, 2650, 1, ''),
(6, 0, 113, 101, 2666, 9, ''),
(6, 0, 112, 101, 2554, 1, ''),
(6, 0, 111, 101, 2382, 1, ''),
(6, 0, 110, 101, 2148, 68, ''),
(6, 0, 109, 101, 2672, 1, ''),
(6, 0, 108, 101, 2384, 1, ''),
(6, 0, 107, 101, 1294, 80, ''),
(6, 0, 106, 101, 2389, 3, ''),
(6, 0, 105, 101, 2526, 1, ''),
(6, 0, 104, 101, 2160, 5, ''),
(6, 0, 103, 101, 1987, 1, ''),
(8, 0, 103, 101, 2148, 6, ''),
(8, 0, 102, 101, 2087, 1, ''),
(8, 0, 101, 1, 2589, 1, ''),
(6, 0, 102, 2, 2589, 1, ''),
(6, 0, 101, 1, 2589, 1, ''),
(7, 0, 161, 148, 2395, 1, ''),
(7, 0, 160, 148, 2464, 1, ''),
(7, 0, 159, 148, 2458, 1, ''),
(7, 0, 158, 148, 2510, 1, ''),
(7, 0, 157, 148, 2464, 1, ''),
(7, 0, 156, 148, 2510, 1, ''),
(7, 0, 155, 131, 2398, 1, ''),
(7, 0, 154, 131, 2464, 1, ''),
(7, 0, 153, 131, 2464, 1, ''),
(7, 0, 152, 131, 2395, 1, ''),
(7, 0, 151, 131, 2510, 1, ''),
(7, 0, 150, 131, 2398, 1, ''),
(7, 0, 149, 131, 2398, 1, ''),
(7, 0, 148, 131, 1987, 1, ''),
(7, 0, 147, 124, 2376, 1, ''),
(7, 0, 146, 124, 2376, 1, ''),
(7, 0, 145, 124, 2376, 1, ''),
(7, 0, 144, 124, 2376, 1, ''),
(7, 0, 143, 124, 2376, 1, ''),
(7, 0, 142, 124, 2398, 1, ''),
(7, 0, 141, 124, 2376, 1, ''),
(7, 0, 140, 124, 2376, 1, ''),
(7, 0, 139, 116, 2458, 1, ''),
(7, 0, 138, 116, 2464, 1, ''),
(7, 0, 137, 116, 2398, 1, ''),
(7, 0, 136, 116, 2464, 1, ''),
(7, 0, 135, 116, 2460, 1, ''),
(7, 0, 134, 116, 2464, 1, ''),
(7, 0, 133, 116, 2398, 1, ''),
(7, 0, 132, 116, 2460, 1, ''),
(7, 0, 131, 115, 1987, 1, ''),
(7, 0, 130, 115, 2510, 1, ''),
(7, 0, 129, 115, 2464, 1, ''),
(7, 0, 128, 115, 2458, 1, ''),
(7, 0, 127, 115, 2510, 1, ''),
(7, 0, 126, 115, 2398, 1, ''),
(7, 0, 125, 115, 2460, 1, ''),
(7, 0, 124, 109, 1987, 1, ''),
(7, 0, 123, 109, 2376, 1, ''),
(7, 0, 122, 109, 2376, 1, ''),
(7, 0, 121, 109, 2376, 1, ''),
(7, 0, 120, 109, 2376, 1, ''),
(7, 0, 119, 109, 2376, 1, ''),
(7, 0, 118, 109, 2671, 27, ''),
(7, 0, 117, 109, 2376, 1, ''),
(7, 0, 116, 104, 1987, 1, ''),
(7, 0, 115, 104, 1987, 1, ''),
(7, 0, 114, 103, 2554, 1, ''),
(7, 0, 113, 103, 2213, 1, ''),
(7, 0, 112, 103, 2213, 1, ''),
(7, 0, 111, 103, 2213, 1, ''),
(7, 0, 110, 102, 2594, 1, ''),
(7, 0, 109, 102, 1987, 1, ''),
(7, 0, 108, 102, 2152, 24, ''),
(7, 0, 107, 101, 2594, 1, ''),
(7, 0, 106, 101, 2148, 86, ''),
(7, 0, 105, 101, 2152, 9, ''),
(7, 0, 104, 101, 1987, 1, ''),
(7, 0, 103, 101, 1996, 1, ''),
(7, 0, 102, 2, 2589, 1, ''),
(7, 0, 101, 1, 2589, 1, ''),
(3, 0, 102, 101, 2594, 1, ''),
(3, 0, 101, 1, 2589, 1, ''),
(11, 0, 108, 102, 2477, 1, ''),
(11, 0, 107, 102, 2495, 1, ''),
(11, 0, 106, 102, 2480, 1, ''),
(11, 0, 105, 102, 2195, 1, ''),
(11, 0, 104, 102, 2169, 1, ''),
(11, 0, 103, 102, 2169, 1, 0x10a0d90800),
(11, 0, 102, 101, 2594, 1, ''),
(11, 0, 101, 1, 2589, 1, '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla  `player_items`
--

CREATE TABLE IF NOT EXISTS `player_items` (
  `player_id` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `pid` int(11) NOT NULL default '0',
  `itemtype` int(11) NOT NULL default '0',
  `count` int(11) NOT NULL default '0',
  `attributes` blob COMMENT 'replaces unique_id, action_id, text, special_desc',
  KEY `player_id` (`player_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Zrzut danych tabeli `player_items`
--

INSERT INTO `player_items` (`player_id`, `sid`, `pid`, `itemtype`, `count`, `attributes`) VALUES
(4, 103, 3, 1996, 1, ''),
(4, 102, 2, 0, 1, ''),
(4, 101, 1, 0, 1, ''),
(9, 105, 101, 2392, 1, ''),
(9, 104, 10, 2530, 1, ''),
(2, 101, 2, 2003, 1, ''),
(7, 114, 103, 2787, 30, ''),
(3, 131, 123, 2398, 1, ''),
(4, 104, 4, 2650, 1, ''),
(4, 105, 5, 0, 1, ''),
(4, 106, 6, 2382, 1, ''),
(4, 107, 7, 0, 1, ''),
(4, 108, 8, 0, 1, ''),
(4, 109, 9, 0, 1, ''),
(4, 110, 10, 0, 0, ''),
(4, 111, 103, 2673, 1, ''),
(4, 112, 103, 0, 0, ''),
(4, 113, 103, 0, 0, ''),
(3, 130, 123, 2376, 1, ''),
(3, 129, 123, 2376, 1, ''),
(6, 117, 102, 2787, 30, ''),
(6, 116, 102, 2213, 1, ''),
(6, 115, 102, 2152, 10, ''),
(6, 114, 102, 2543, 98, ''),
(6, 113, 102, 2455, 1, ''),
(6, 112, 102, 2544, 100, ''),
(6, 111, 102, 2544, 100, ''),
(6, 110, 102, 2148, 15, ''),
(6, 109, 102, 2580, 1, ''),
(6, 108, 102, 2544, 30, ''),
(6, 107, 10, 2544, 94, ''),
(6, 106, 8, 2643, 1, ''),
(6, 105, 7, 2647, 1, ''),
(6, 104, 6, 2456, 1, ''),
(3, 128, 123, 2376, 1, ''),
(6, 103, 4, 2483, 1, ''),
(6, 102, 3, 1988, 1, ''),
(5, 111, 103, 2214, 1, ''),
(5, 110, 103, 2554, 1, ''),
(5, 109, 103, 2120, 1, ''),
(6, 118, 102, 2120, 1, ''),
(6, 101, 1, 2490, 1, ''),
(3, 127, 123, 2398, 1, ''),
(8, 110, 102, 2673, 1, ''),
(3, 126, 123, 2398, 1, ''),
(3, 125, 123, 2398, 1, ''),
(3, 124, 123, 2398, 1, ''),
(8, 109, 102, 2666, 11, ''),
(8, 108, 102, 2148, 70, ''),
(8, 107, 102, 2120, 1, ''),
(3, 122, 111, 2376, 1, ''),
(8, 106, 8, 2643, 1, ''),
(8, 105, 6, 2403, 1, ''),
(8, 104, 5, 2512, 1, ''),
(5, 108, 103, 2036, 1, ''),
(5, 107, 10, 2168, 1, 0x1060ae0a00),
(5, 106, 7, 2495, 1, ''),
(5, 105, 5, 2530, 1, ''),
(5, 104, 4, 2494, 1, ''),
(5, 103, 3, 1987, 1, ''),
(5, 102, 2, 2170, 1, ''),
(5, 101, 1, 2460, 1, ''),
(3, 123, 111, 1987, 1, ''),
(9, 103, 6, 2390, 1, ''),
(9, 102, 4, 2650, 1, ''),
(9, 101, 3, 1987, 1, ''),
(8, 103, 4, 2650, 1, ''),
(8, 102, 3, 1996, 1, ''),
(8, 101, 2, 2172, 150, ''),
(3, 121, 111, 2376, 1, ''),
(3, 120, 111, 2376, 1, ''),
(3, 119, 111, 2376, 1, ''),
(3, 118, 111, 2376, 1, ''),
(3, 117, 111, 2398, 1, ''),
(3, 116, 111, 2376, 1, ''),
(3, 115, 108, 2595, 1, ''),
(7, 113, 103, 2120, 1, ''),
(7, 112, 103, 2671, 12, ''),
(7, 111, 103, 2148, 75, ''),
(7, 110, 103, 2209, 1, ''),
(7, 109, 10, 2152, 1, ''),
(7, 108, 8, 2643, 1, ''),
(7, 107, 7, 2649, 1, ''),
(7, 106, 6, 2400, 1, ''),
(7, 105, 5, 2530, 1, ''),
(7, 104, 4, 2464, 1, ''),
(7, 103, 3, 1987, 1, ''),
(3, 114, 108, 2365, 1, ''),
(3, 113, 104, 2671, 1, ''),
(3, 112, 104, 2395, 1, ''),
(3, 111, 101, 1987, 1, ''),
(3, 110, 101, 2671, 34, ''),
(3, 109, 101, 2120, 1, ''),
(3, 108, 101, 2365, 1, ''),
(10, 105, 101, 2214, 1, 0x1050a50500),
(10, 104, 10, 2160, 5, ''),
(10, 103, 6, 2390, 1, ''),
(3, 107, 101, 1988, 1, ''),
(7, 102, 2, 2172, 150, ''),
(7, 101, 1, 2480, 1, ''),
(3, 106, 101, 2160, 52, ''),
(3, 105, 101, 2148, 80, ''),
(3, 104, 101, 1987, 1, ''),
(3, 103, 10, 2580, 1, ''),
(3, 102, 6, 2390, 1, ''),
(11, 129, 103, 2673, 3, ''),
(11, 128, 103, 2487, 1, ''),
(11, 127, 103, 2457, 1, ''),
(11, 126, 103, 2472, 1, ''),
(11, 125, 103, 2504, 1, ''),
(3, 101, 3, 1987, 1, ''),
(12, 109, 102, 2120, 1, ''),
(12, 108, 102, 2148, 37, ''),
(12, 107, 10, 2168, 1, 0x1020120a00),
(12, 106, 8, 2195, 1, ''),
(12, 105, 6, 2395, 1, ''),
(12, 104, 5, 2530, 1, ''),
(12, 103, 4, 2464, 1, ''),
(12, 102, 3, 1996, 1, ''),
(12, 101, 1, 2460, 1, ''),
(10, 102, 4, 2650, 1, ''),
(10, 101, 3, 1987, 1, ''),
(2, 102, 3, 1987, 1, ''),
(2, 103, 5, 2148, 1, ''),
(2, 104, 6, 2148, 1, ''),
(2, 105, 10, 2148, 1, ''),
(1, 105, 10, 2148, 1, ''),
(1, 104, 6, 2148, 1, ''),
(1, 103, 5, 2148, 1, ''),
(1, 102, 3, 1999, 1, ''),
(1, 101, 2, 2003, 1, ''),
(11, 124, 103, 7457, 1, ''),
(11, 123, 103, 2400, 1, ''),
(11, 122, 103, 2343, 1, ''),
(11, 121, 102, 2313, 1, 0x0c01),
(11, 120, 102, 2277, 1, 0x0c01),
(11, 119, 102, 2300, 1, 0x0c01),
(11, 118, 102, 2304, 1, 0x0c01),
(11, 117, 102, 2308, 1, 0x0c01),
(11, 116, 102, 2275, 1, 0x0c01),
(11, 115, 102, 2305, 1, 0x0c01),
(11, 114, 102, 2309, 1, 0x0c01),
(11, 113, 102, 2269, 1, 0x0c01),
(11, 112, 102, 2284, 1, 0x0c01),
(11, 111, 102, 2207, 1, 0x1030501b00),
(11, 110, 102, 2191, 1, ''),
(11, 109, 10, 2462, 1, ''),
(11, 108, 8, 2645, 1, ''),
(11, 107, 7, 2477, 1, ''),
(11, 106, 6, 2379, 1, ''),
(11, 105, 5, 2530, 1, ''),
(11, 104, 4, 2476, 1, ''),
(11, 103, 3, 1987, 1, ''),
(11, 102, 2, 2003, 1, ''),
(11, 101, 1, 2493, 1, '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla  `player_skills`
--

CREATE TABLE IF NOT EXISTS `player_skills` (
  `player_id` int(11) NOT NULL default '0',
  `skillid` int(10) unsigned NOT NULL default '0',
  `value` int(10) unsigned NOT NULL default '0',
  `count` int(10) unsigned NOT NULL default '0',
  KEY `player_id` (`player_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Zrzut danych tabeli `player_skills`
--

INSERT INTO `player_skills` (`player_id`, `skillid`, `value`, `count`) VALUES
(2, 0, 10, 0),
(2, 1, 10, 0),
(2, 2, 10, 0),
(2, 3, 10, 0),
(2, 4, 10, 0),
(2, 5, 10, 0),
(2, 6, 10, 0),
(3, 0, 10, 0),
(3, 1, 10, 37),
(3, 2, 11, 39),
(3, 3, 10, 0),
(3, 4, 10, 0),
(3, 5, 10, 0),
(3, 6, 12, 3),
(4, 0, 10, 0),
(4, 1, 10, 0),
(4, 2, 10, 0),
(4, 3, 10, 0),
(4, 4, 10, 0),
(4, 5, 10, 0),
(4, 6, 10, 0),
(5, 0, 10, 0),
(5, 1, 10, 0),
(5, 2, 14, 404),
(5, 3, 10, 0),
(5, 4, 10, 0),
(5, 5, 15, 300),
(5, 6, 10, 0),
(6, 0, 11, 6),
(6, 1, 12, 35),
(6, 2, 14, 141),
(6, 3, 10, 0),
(6, 4, 43, 12),
(6, 5, 16, 54),
(6, 6, 10, 0),
(7, 0, 10, 0),
(7, 1, 10, 0),
(7, 2, 15, 1254),
(7, 3, 10, 0),
(7, 4, 10, 0),
(7, 5, 15, 651),
(7, 6, 10, 0),
(8, 0, 10, 0),
(8, 1, 10, 0),
(8, 2, 23, 33),
(8, 3, 10, 0),
(8, 4, 10, 0),
(8, 5, 20, 207),
(8, 6, 10, 0),
(9, 0, 10, 3),
(9, 1, 13, 182),
(9, 2, 11, 50),
(9, 3, 10, 0),
(9, 4, 10, 0),
(9, 5, 10, 15),
(9, 6, 10, 0),
(10, 0, 10, 0),
(10, 1, 10, 21),
(10, 2, 10, 6),
(10, 3, 10, 0),
(10, 4, 10, 0),
(10, 5, 10, 0),
(10, 6, 10, 0),
(11, 0, 22, 2200000),
(11, 1, 10, 0),
(11, 2, 22, 9950000),
(11, 3, 10, 0),
(11, 4, 10, 0),
(11, 5, 94, 280000),
(11, 6, 10, 0),
(12, 0, 10, 0),
(12, 1, 10, 0),
(12, 2, 11, 33),
(12, 3, 10, 0),
(12, 4, 10, 0),
(12, 5, 10, 81),
(12, 6, 10, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla  `player_spells`
--

CREATE TABLE IF NOT EXISTS `player_spells` (
  `player_id` int(11) NOT NULL default '0',
  `name` varchar(255) collate latin1_general_ci NOT NULL default '',
  KEY `player_id` (`player_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Zrzut danych tabeli `player_spells`
--


-- --------------------------------------------------------

--
-- Struktura tabeli dla  `player_storage`
--

CREATE TABLE IF NOT EXISTS `player_storage` (
  `player_id` int(11) NOT NULL default '0',
  `key` int(11) NOT NULL default '0',
  `value` int(11) NOT NULL default '0',
  KEY `player_id` (`player_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Zrzut danych tabeli `player_storage`
--

INSERT INTO `player_storage` (`player_id`, `key`, `value`) VALUES
(3, 8000, 2),
(5, 2530, 3),
(5, 2460, 1),
(3, 2580, 1),
(3, 2530, 3),
(3, 2480, 1),
(5, 2384, 1),
(5, 2170, 1),
(5, 2036, 1),
(9, 2530, 3),
(3, 2460, 1),
(11, 20010, 3),
(11, 8000, 1),
(11, 7480, 1248418117),
(11, 7165, 1),
(11, 7164, 1),
(11, 7163, 1),
(3, 2395, 1),
(3, 2384, 1),
(3, 2170, 1),
(12, 2530, 1),
(3, 2036, 1),
(2, 20010, 3),
(1, 20010, 3),
(1, 7120, 1),
(11, 7120, 1),
(11, 7119, 1),
(11, 7114, 1),
(11, 7111, 1),
(11, 6662, 1),
(11, 2580, 1),
(11, 2530, 3),
(11, 2480, 1),
(11, 2460, 1),
(11, 2395, 1),
(11, 2036, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla  `player_viplist`
--

CREATE TABLE IF NOT EXISTS `player_viplist` (
  `player_id` int(11) NOT NULL default '0' COMMENT 'id of player whose viplist entry it is',
  `vip_id` int(11) NOT NULL default '0' COMMENT 'id of target player of viplist entry',
  KEY `player_id` (`player_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Zrzut danych tabeli `player_viplist`
--

INSERT INTO `player_viplist` (`player_id`, `vip_id`) VALUES
(5, 6),
(5, 3),
(8, 6),
(8, 3),
(7, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla  `tiles`
--

CREATE TABLE IF NOT EXISTS `tiles` (
  `id` int(11) NOT NULL auto_increment,
  `x` int(11) NOT NULL default '0',
  `y` int(11) NOT NULL default '0',
  `z` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=7705 ;

--
-- Zrzut danych tabeli `tiles`
--

INSERT INTO `tiles` (`id`, `x`, `y`, `z`) VALUES
(211, 55, 196, 5),
(213, 55, 198, 5),
(265, 61, 196, 5),
(267, 61, 198, 5),
(536, 124, 441, 15),
(540, 131, 436, 15),
(541, 124, 436, 15),
(542, 96, 422, 15),
(587, 93, 164, 7),
(610, 93, 160, 7),
(628, 93, 156, 7),
(645, 93, 152, 7),
(649, 96, 152, 7),
(681, 93, 164, 6),
(696, 93, 160, 6),
(711, 93, 156, 6),
(726, 93, 152, 6),
(728, 101, 158, 6),
(745, 101, 163, 6),
(775, 93, 164, 5),
(790, 93, 160, 5),
(805, 93, 156, 5),
(820, 93, 152, 5),
(822, 101, 163, 5),
(844, 101, 158, 5),
(874, 93, 164, 4),
(889, 93, 160, 4),
(904, 93, 156, 4),
(919, 93, 152, 4),
(921, 101, 163, 4),
(942, 101, 158, 4),
(972, 117, 416, 15),
(1036, 47, 114, 4),
(1125, 55, 119, 4),
(1304, 55, 113, 5),
(1306, 55, 118, 5),
(1474, 54, 112, 6),
(1477, 54, 118, 6),
(1548, 43, 114, 7),
(1550, 43, 116, 7),
(1676, 55, 113, 7),
(1682, 55, 119, 7),
(1722, 59, 115, 7),
(1729, 81, 118, 5),
(1754, 85, 111, 5),
(1794, 69, 91, 5),
(1933, 75, 75, 5),
(1974, 81, 75, 5),
(2078, 68, 84, 5),
(2158, 68, 77, 5),
(2191, 68, 74, 5);

-- --------------------------------------------------------

--
-- Struktura tabeli dla  `tile_items`
--

CREATE TABLE IF NOT EXISTS `tile_items` (
  `tile_id` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `pid` int(11) NOT NULL default '0',
  `itemtype` int(11) NOT NULL default '0',
  `count` int(11) NOT NULL default '0',
  `attributes` blob,
  KEY `tile_id` (`tile_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Zrzut danych tabeli `tile_items`
--

INSERT INTO `tile_items` (`tile_id`, `sid`, `pid`, `itemtype`, `count`, `attributes`) VALUES
(211, 1, 0, 1252, 1, ''),
(213, 1, 0, 1252, 1, ''),
(265, 1, 0, 1252, 1, ''),
(267, 1, 0, 1252, 1, ''),
(536, 1, 0, 1252, 1, ''),
(540, 1, 0, 1252, 1, ''),
(541, 1, 0, 1252, 1, ''),
(542, 1, 0, 1250, 1, ''),
(587, 1, 0, 1250, 1, ''),
(610, 1, 0, 1250, 1, ''),
(628, 1, 0, 1250, 1, ''),
(645, 1, 0, 1250, 1, ''),
(649, 1, 0, 1250, 1, ''),
(681, 1, 0, 1250, 1, ''),
(696, 1, 0, 1250, 1, ''),
(711, 1, 0, 1250, 1, ''),
(726, 1, 0, 1250, 1, ''),
(728, 1, 0, 1250, 1, ''),
(745, 1, 0, 1250, 1, ''),
(775, 1, 0, 1250, 1, ''),
(790, 1, 0, 1250, 1, ''),
(805, 1, 0, 1250, 1, ''),
(820, 1, 0, 1250, 1, ''),
(822, 1, 0, 1250, 1, ''),
(844, 1, 0, 1250, 1, ''),
(874, 1, 0, 1250, 1, ''),
(889, 1, 0, 1250, 1, ''),
(904, 1, 0, 1250, 1, ''),
(919, 1, 0, 1250, 1, ''),
(921, 1, 0, 1250, 1, ''),
(942, 1, 0, 1250, 1, ''),
(972, 1, 0, 1251, 1, ''),
(1036, 1, 0, 1250, 1, ''),
(1125, 1, 0, 1250, 1, ''),
(1304, 1, 0, 1250, 1, ''),
(1306, 1, 0, 1250, 1, ''),
(1474, 1, 0, 1250, 1, ''),
(1477, 1, 0, 1250, 1, ''),
(1548, 1, 0, 1252, 1, ''),
(1550, 1, 0, 1252, 1, ''),
(1676, 1, 0, 1250, 1, ''),
(1682, 1, 0, 1250, 1, ''),
(1722, 1, 0, 1250, 1, ''),
(1729, 1, 0, 1250, 1, ''),
(1754, 1, 0, 1250, 1, ''),
(1794, 1, 0, 1252, 1, ''),
(1933, 1, 0, 1252, 1, ''),
(1974, 1, 0, 1252, 1, ''),
(2078, 1, 0, 1250, 1, ''),
(2158, 1, 0, 1250, 1, ''),
(2191, 1, 0, 1250, 1, '');
