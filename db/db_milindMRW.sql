-- phpMyAdmin SQL Dump
-- version 4.6.5.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 18, 2017 at 03:34 PM
-- Server version: 5.6.34
-- PHP Version: 7.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_moviereview`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cast`
--

CREATE TABLE `tbl_cast` (
  `cast_id` smallint(4) UNSIGNED NOT NULL,
  `cast_fname` varchar(75) NOT NULL,
  `cast_lname` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cast`
--

INSERT INTO `tbl_cast` (`cast_id`, `cast_fname`, `cast_lname`) VALUES
(1, 'Kevin', 'Bacon'),
(2, 'Fred', 'Ward'),
(3, 'Finn', 'Carter'),
(4, 'Michael', 'Gross'),
(5, 'Reba', 'McEntire'),
(6, 'Robert', 'Jayne'),
(7, 'Jeffery', 'Morgan'),
(8, 'Natasha', 'Calis'),
(9, 'Kyra', 'Sedgwick'),
(10, 'Jay', 'Brazeau'),
(11, 'Madison', 'Davenport'),
(12, 'Grant', 'Show'),
(13, 'Dale', 'Midkiff'),
(14, 'Fred', 'Gwynne'),
(15, 'Denise', 'Crosby'),
(16, 'Brad', 'Greenquist'),
(17, 'Michael', 'Lombard'),
(18, 'Miko', 'Hughes'),
(19, 'Patrick', 'Fabian'),
(20, 'Ashley', 'Bell'),
(21, 'Iris', 'Bahr'),
(22, 'Louis', 'Herthum'),
(23, 'Caleb', 'Jones'),
(24, 'Tony', 'Bentley'),
(25, 'Jennifer', 'Lawrence'),
(26, 'Max', 'Thieriot'),
(27, 'Elisabeth', 'Shue'),
(28, 'Gil', 'Bellows'),
(29, 'Nolan', 'Funk'),
(30, 'Eva', 'Link'),
(31, 'Jamie Lee', 'Curtis'),
(32, 'Donald', 'Pleasence'),
(33, 'Charles', 'Cyphers'),
(34, 'Jeffery', 'Kramer'),
(35, 'Lance', 'Guest'),
(36, 'Pamela', 'Shoop'),
(37, 'Bruce', 'Campbell'),
(38, 'Embeth', 'Davidtz'),
(39, 'Marcus', 'Gilbert'),
(40, 'Ian', 'Abercrombie'),
(41, 'Richard', 'Grove'),
(42, 'Timothy', 'Quill'),
(43, 'Ben', 'Burtt'),
(44, 'Elissa', 'Knight'),
(45, 'Jeff', 'Garlin'),
(46, 'Fred', 'Willard'),
(47, 'John', 'Ratzenberger'),
(48, 'Kathy', 'Najimy'),
(49, 'Steve', 'Carell'),
(50, 'Jason', 'Segel'),
(51, 'Russel', 'Brand'),
(52, 'Julie', 'Andrews'),
(53, 'Will', 'Arnett'),
(54, 'Kristen', 'Wiig'),
(55, 'Catherine', 'O\'Hara'),
(56, 'Martin', 'Short'),
(57, 'Martin', 'Landau'),
(58, 'Charlie', 'Tahan'),
(59, 'Atticus', 'Shaffer'),
(60, 'Winona', 'Ryder'),
(61, 'James', 'McAvoy'),
(62, 'Emily', 'Blunt'),
(63, 'Ashley', 'Jensen'),
(64, 'Michael', 'Caine'),
(65, 'Matt', 'Lucas'),
(66, 'Jim', 'Cummings'),
(67, 'Eunice', 'Cho'),
(68, 'Karen', 'Disher'),
(69, 'Harrison', 'Fahn'),
(70, 'Maile', 'Flanagan'),
(71, 'Jason', 'Fricchione'),
(72, 'Bill', 'Hader'),
(73, 'Edward', 'Asner'),
(74, 'Christopher', 'Plummer'),
(75, 'Jordan', 'Nagai'),
(76, 'Bob', 'Peterson'),
(77, 'Delroy', 'Lindo'),
(78, 'Jerome', 'Ranft'),
(79, 'Ben', 'Burtt'),
(80, 'Elissa', 'Knight'),
(81, 'Jeff', 'Garlin'),
(82, 'Fred', 'Willard'),
(83, 'John', 'Ratzenberger'),
(84, 'Kathy', 'Najimy'),
(85, 'Alec', 'Baldwin'),
(86, 'Geena', 'Davis'),
(87, 'Annie', 'McEnroe'),
(88, 'Maurice', 'Page'),
(89, 'Hugo', 'Stanger'),
(90, 'Michael', 'Keaton'),
(91, 'Bill', 'Murray'),
(92, 'Dan', 'Aykroyd'),
(93, 'Sigourney', 'Weaver'),
(94, 'Harold', 'Ramis'),
(95, 'Rick', 'Moranis'),
(96, 'Annie', 'Potts'),
(97, 'Jason', 'Bateman'),
(98, 'Steve', 'Wiebe'),
(99, 'Kevin', 'Spacey'),
(100, 'Charlie', 'Day'),
(101, 'Lindsay', 'Sloane'),
(102, 'Michael', 'Albala'),
(103, 'Aaron', 'Taylor-Johnson'),
(104, 'Garret', 'Brown'),
(105, 'Evan', 'Peters'),
(106, 'Deborah', 'Twiss'),
(107, 'Lyndsy', 'Fonseca'),
(108, 'Shophie', 'Wu'),
(109, 'Benicio', 'Del Toro'),
(110, 'Dennis', 'Farina'),
(111, 'Vinnie', 'Jones'),
(112, 'Brad', 'Pitt'),
(113, 'Rade', 'Serbedzija'),
(114, 'Jason', 'Statham'),
(115, 'Bradley', 'Cooper'),
(116, 'Ed', 'Helms'),
(117, 'Zach', 'Galifianakis'),
(118, 'Justin', 'Bartha'),
(119, 'Heather', 'Graham'),
(120, 'Sasha', 'Barrese'),
(121, 'Judy', 'Davis'),
(122, 'Flavio', 'Parenti'),
(123, 'Roberto', 'Benigni'),
(124, 'Alison', 'Pill'),
(125, 'Alessandro', 'Tiberi'),
(126, 'Alessandra', 'Mastronardi'),
(127, 'Josh', 'Hartnett'),
(128, 'Ewan', 'McGregor'),
(129, 'Tom', 'Sizemore'),
(130, 'Eric', 'Bana'),
(131, 'William', 'Fichtner'),
(132, 'Ewen', 'Bremner'),
(133, 'Karl', 'Urban'),
(134, 'Evan', 'Wood'),
(135, 'Andile', 'Mngadi'),
(136, 'Porteus', 'Xandau'),
(137, 'Jason', 'Cope'),
(138, 'Emma', 'Breschi'),
(139, 'Jet', 'Li'),
(140, 'Xun', 'Chen'),
(141, 'Kun', 'Chen'),
(142, 'Gwei', 'Lun_Mei'),
(143, 'Yuchun', 'Li'),
(144, 'Mavis', 'Fan'),
(145, 'Robert', 'Downey Jr.'),
(146, 'Gwyneth', 'Paltrow'),
(147, 'Don', 'Cheadle'),
(148, 'Scarlett', 'Johansson'),
(149, 'Sam', 'Rockwell'),
(150, 'Mickey', 'Rourke'),
(151, 'Liam', 'Neeson'),
(152, 'Maggie', 'Grace'),
(153, 'Famke', 'Janssen'),
(154, 'Leland', 'Orser'),
(155, 'Jon', 'Gries'),
(156, 'Daneil Bernard', 'Sweeney'),
(157, 'Shia', 'LeBeouf'),
(158, 'Rosie', 'Huntington-Whiteley'),
(159, 'Josh', 'Duhamel'),
(160, 'John', 'Turturro'),
(161, 'Tyrese', 'Gibson'),
(162, 'Patrick', 'Dempsey'),
(163, 'Stephen', 'Baldwin'),
(164, 'Gabriel', 'Byrne'),
(165, 'Kevin', 'Pollak'),
(166, 'Chazz', 'Palminteri');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cat`
--

CREATE TABLE `tbl_cat` (
  `cat_id` smallint(4) UNSIGNED NOT NULL,
  `cat_name` varchar(30) NOT NULL,
  `cat_desc` varchar(245) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cat`
--

INSERT INTO `tbl_cat` (`cat_id`, `cat_name`, `cat_desc`) VALUES
(1, 'action', 'Think of Chuck Norris'),
(2, 'comedy', 'Think of Eddie Murphy'),
(3, 'family', 'Think of Disney'),
(4, 'horror', 'Think of Borat in a bikini');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments`
--

CREATE TABLE `tbl_comments` (
  `comments_id` int(11) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `comment` text NOT NULL,
  `post_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_comments`
--

INSERT INTO `tbl_comments` (`comments_id`, `name`, `comment`, `post_time`) VALUES
(1, 'Mike', 'This movie was awesome.', '2017-04-12 01:44:12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_director`
--

CREATE TABLE `tbl_director` (
  `dir_id` smallint(4) UNSIGNED NOT NULL,
  `dir_fname` varchar(75) NOT NULL,
  `dir_lname` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_director`
--

INSERT INTO `tbl_director` (`dir_id`, `dir_fname`, `dir_lname`) VALUES
(1, 'Ridley', 'Scott'),
(2, 'Pete', 'Travis'),
(3, 'Hark', 'Tsui'),
(4, 'Jon', 'Favreau'),
(5, 'Olivier', 'Megaton'),
(6, 'Michael', 'Bay'),
(7, 'Bryan', 'Singer'),
(8, 'Tim', 'Burton'),
(9, 'Ivan', 'Reitman'),
(10, 'Seth', 'Gordon'),
(11, 'Matthew', 'Vaughn'),
(12, 'Guy', 'Ritchie'),
(13, 'Todd', 'Phillips'),
(14, 'Woody', 'Allen'),
(15, 'Phil', 'Lord'),
(16, 'Chris', 'Miller'),
(17, 'Pierre', 'Coffin'),
(18, 'Chris', 'Renaud'),
(19, 'Kelly', 'Asbury'),
(20, 'Carlos', 'Saldanha'),
(21, 'Mike', 'Thurmeier'),
(22, 'Pete', 'Doctor'),
(23, 'Bob', 'Peterson'),
(24, 'Andrew', 'Stanton'),
(25, 'Sam', 'Raimi'),
(26, 'Rick', 'Rosenthai'),
(27, 'Mark', 'Tonderai'),
(28, 'Daniel', 'Stamm'),
(29, 'Mary', 'Lambert'),
(30, 'Ole', 'Bornedal'),
(31, 'Ron', 'Underwood');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_l_mc`
--

CREATE TABLE `tbl_l_mc` (
  `mc_id` smallint(4) UNSIGNED NOT NULL,
  `movies_id` smallint(4) NOT NULL,
  `cat_id` smallint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_l_mc`
--

INSERT INTO `tbl_l_mc` (`mc_id`, `movies_id`, `cat_id`) VALUES
(1, 1, 4),
(2, 2, 4),
(3, 3, 1),
(4, 4, 3),
(5, 5, 2),
(6, 6, 2),
(7, 7, 2),
(8, 8, 1),
(9, 9, 3),
(10, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_l_md`
--

CREATE TABLE `tbl_l_md` (
  `md_id` smallint(4) UNSIGNED NOT NULL,
  `movies_id` smallint(4) NOT NULL,
  `dir_id` smallint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_l_md`
--

INSERT INTO `tbl_l_md` (`md_id`, `movies_id`, `dir_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

CREATE TABLE `tbl_movies` (
  `movies_id` smallint(4) UNSIGNED NOT NULL,
  `movies_thumb` varchar(50) NOT NULL DEFAULT 'noThumb.jpg',
  `movies_fimg` varchar(50) NOT NULL DEFAULT 'nofImg.jpg',
  `movies_bimg` varchar(50) NOT NULL DEFAULT 'nobImg.jpg',
  `movies_title` varchar(75) NOT NULL,
  `movies_year` varchar(20) NOT NULL,
  `movies_storyline` text NOT NULL,
  `movies_runtime` varchar(25) NOT NULL,
  `movies_trailer` varchar(200) NOT NULL,
  `movies_price` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `movies_thumb`, `movies_fimg`, `movies_bimg`, `movies_title`, `movies_year`, `movies_storyline`, `movies_runtime`, `movies_trailer`, `movies_price`) VALUES
(1, 'TH_Tremors.jpg', 'Tremors.jpg', 'nobImg.jpg', 'Tremors', '1990', 'A small town gradually becomes aware of a strange creature which picks off people one by one. But what is this creature, and where is it? At the same time, a seismologist is working in the area, she detects tremors. The creature lives underground, and can pop up without warning. Trapped in their town, the town-folk have no escape.', '96 min', 'tremors.mp4', '26.99'),
(2, 'TH_LastExorcism.jpg', 'LastExorcism.jpg', 'nobImg.jpg', 'Last Exorcism', '2010', 'In Baton Rouge, Louisiana, the evangelical Reverend Cotton Marcus was raised by his father to be a preacher. He agrees that the filmmaker Iris Reisen and the cameraman Daniel Moskowitz make a documentary about his life. Cotton tells that when his wife Shanna Marcus had troubles in the delivery of their son Justin, he prioritized the doctor help to God and since then he questions his faith. Further, he tells that exorcisms are frauds but the results are good for the believers because they believe it is true. When Cotton is summoned by the farmer Louis Sweetzer to perform an exorcism in his daughter Nell, Cotton sees the chance to prove to the documentary crew what he has just told. They head to Ivanwood and they have a hostile reception from Louis\'s son Caleb. Cotton performs the exorcism in Nell, exposing his tricks to the camera, but sooner they learn that the dysfunctional Sweetzer family has serious problems.', '87 min', 'exorcism.mp4', '28.99'),
(3, 'TH_ArmyOfDarkness.jpg', 'ArmyOfDarkness.jpg', 'nobImg.jpg', 'Army Of Darkness', '1992', 'In this sequel to the Evil Dead films, a discount-store employee (\"Name\'s Ash. Housewares.\") is time-warped to a medieval castle beset by monstrous forces. Initially mistaken for an enemy, he is soon revealed as the prophecised savior who can quest for the Necronomicon, a book which can dispel the evil. Unfortunately, he screws up the magic words while collecting the tome, and releases an army of skeletons, led by his own Deadite counterpart. What follows is a thrilling, yet tongue-in-cheek battle between Ash\'s 20th Century tactics and the minions of darkness.', '81 min', 'armyofdarkness.mp4', '6.99'),
(4, 'TH_CloudyWithAChanceOfMeatballs.jpg', 'CloudyWithAChanceOfMeatballs.jpg', 'nobImg.jpg', 'Cloudy With A Chance Of Meatballs', '2009', 'Flint Lockwood thinks he\'s a genius. But none of the things he invented are things that make sense or are useful. However, he has the support of his mother but when she dies, he\'s left alone with his father who thinks he should give it up. When the community that he lives in, is in an economic crisis because their primary source of income a sardine cannery was shut down, Flint decides to try his latest invention, a machine that can turn water into food. But something goes wrong and the machine ends up in the atmosphere. Later it starts raining food. The shifty mayor tries to use this as a way to help their community, but when Flint senses something wrong with the machine, the mayor convinces him to ignore it. However, as Flint predicts, chaos ensues.', '90 min', 'meatballs.mp4', '26.99'),
(5, 'TH_HorribleBosses.jpg', 'HorribleBosses.jpg', 'nobImg.jpg', 'Horrible Bosses', '2011', 'Nick hates his boss, mostly because he\'s expected to work from before sunrise to after sunset and his boss, Mr. Harken, calls him out for being a minute late and blackmails him so he can\'t quit. Dale hates his boss, Dr. Julia Harris, because she makes unwelcome sexual advances when he\'s about to get married. But Dale is on that pesky list of child offenders so he can\'t quit. Kurt actually likes his job and his boss, well, up until his boss dies and the boss\'s coked-out, psychopathic son takes over. But who would be crazy enough to quit their jobs in such poor economic times? Instead Nick, Dale and Kurt drunkenly and hypothetically discuss how to kill their bosses, and before they know it, they\'ve hired a murder consultant to help them pull off the three deeds.', '98 min', 'bosses.mp4', '22.99'),
(6, 'TH_Snatch.jpg', 'Snatch.jpg', 'nobImg.jpg', 'Snatch', '2000', 'Turkish and his close friend/accomplice Tommy get pulled into the world of match fixing by the notorious Brick Top. Things get complicated when the boxer they had lined up gets the shit kicked out of him by Pitt, a \'pikey\' ( slang for an Irish Gypsy)- who comes into the equation after Turkish, an unlicensed boxing promoter wants to buy a caravan off the Irish Gypsies. They then try to convince Pitt not only to fight for them, but to lose for them too. Whilst all this is going on, a huge diamond heist takes place, and a fistful of motley characters enter the story, including \'Cousin Avi\', \'Boris The Blade\', \'Franky Four Fingers\' and \'Bullet Tooth Tony\'. Things go from bad to worse as it all becomes about the money, the guns, and the damned dog! ', '104 min', 'snatch.mp4', '19.99'),
(7, 'TH_TheHangover.jpg', 'TheHangover.jpg', 'nobImg.jpg', 'The Hangover', '2009', 'Angelenos Doug Billings and Tracy Garner are about to get married. Two days before the wedding, the four men in the wedding party - Doug, Doug\'s two best buddies Phil Wenneck and Stu Price, and Tracy\'s brother Alan Garner - hop into Tracy\'s father\'s beloved Mercedes convertible for a 24-hour stag party to Las Vegas. Phil, a married high school teacher, has the same maturity level as his students when he\'s with his pals. Stu, a dentist, is worried about everything, especially what his controlling girlfriend Melissa thinks. Because she disapproves of traditional male bonding rituals, Stu has to lie to her about the stag, he telling her that they are going on a wine tasting tour in the Napa Valley. Regardless, he intends on eventually marrying her, against the advice and wishes of his friends. And Alan seems to be unaware of what are considered the social graces of the western world...', '100 min', 'hangover.mp4', '22.99'),
(8, 'TH_BlackHawkDown.jpg', 'BlackHawkDown.jpg', 'nobImg.jpg', 'Black Hawk Down', '2001', 'Action/war drama based on the best-selling book detailing a near-disastrous mission in Somalia on October 3, 1993. On this date nearly 100 U.S. Army Rangers, commanded by Capt. Mike Steele, were dropped by helicopter deep into the capital city of Mogadishu to capture two top lieutenants of a Somali warlord. This lead to a large and drawn-out firefight between the Rangers and hundreds of Somali gunmen, leading to the destruction of two U.S. Black Hawk helicopters. This film focuses on the heroic efforts of various Rangers to get to the downed black hawks, centering on Sgt. Eversmann, leading the Ranger unit Chalk Four to the first black hawk crash site, Warrant Officer Durant who was captured after being the only survivor of the second black hawk crash, as well as many others who were involved. ', '144 min', 'blackhawk.mp4', '22.99'),
(9, 'TH_IronMan2.jpg', 'IronMan2.jpg', 'nobImg.jpg', 'Iron Man 2', '2010', 'With the world now aware of his dual life as the armored superhero Iron Man, billionaire inventor Tony Stark faces pressure from the government, the press, and the public to share his technology with the military. Unwilling to let go of his invention, Stark, along with Pepper Potts, and James \"Rhodey\" Rhodes at his side, must forge new alliances - and confront powerful enemies.', '124 min', 'ironman2.mp4', '26.99'),
(10, 'TH_Taken2.jpg', 'Taken2.jpg', 'nobImg.jpg', 'Taken 2', '2012', 'Bryan Mills, the retired CIA agent, stopped at nothing to save his daughter Kim from Albanian kidnappers. The father of one of the kidnappers has sworn revenge and takes Bryan and his wife hostage during their family vacation in Istanbul. Bryan enlists his daughter to help them escape.', '92 min', 'taken2.mp4', '26.99');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rating`
--

CREATE TABLE `tbl_rating` (
  `rating_id` smallint(4) UNSIGNED NOT NULL,
  `rating_name` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_rating`
--

INSERT INTO `tbl_rating` (`rating_id`, `rating_name`) VALUES
(1, '1 star'),
(2, '2 star'),
(3, '3 star'),
(4, '4 star'),
(5, '5 star');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_studio`
--

CREATE TABLE `tbl_studio` (
  `studio_id` smallint(4) UNSIGNED NOT NULL,
  `studio_name` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_studio`
--

INSERT INTO `tbl_studio` (`studio_id`, `studio_name`) VALUES
(1, 'Sony'),
(2, 'Lions Gate'),
(3, 'Beijing Liangzi Group'),
(4, 'Marvel Studios'),
(5, 'Twentieth Century Fox Film'),
(6, 'Paramount Pictures'),
(7, ' PolyGram'),
(8, 'Geffen Company'),
(9, 'Columbia Pictures'),
(10, 'New Line Cinema'),
(11, 'Warner Bros'),
(12, 'Medusa Film'),
(13, 'Universal Pictures'),
(14, 'Walt Disney Pictures'),
(15, 'Touchstone Pictures'),
(16, 'Pixar'),
(17, 'Relativity Media'),
(18, 'Strike Entertainment'),
(19, 'Ghost House Pictures');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_type`
--

CREATE TABLE `tbl_type` (
  `type_id` smallint(4) UNSIGNED NOT NULL,
  `type_name` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_type`
--

INSERT INTO `tbl_type` (`type_id`, `type_name`) VALUES
(1, 'Blu_Ray'),
(2, 'Blu_Ray Combo Pack'),
(3, 'Blu_Ray 3D');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_cast`
--
ALTER TABLE `tbl_cast`
  ADD PRIMARY KEY (`cast_id`);

--
-- Indexes for table `tbl_cat`
--
ALTER TABLE `tbl_cat`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  ADD PRIMARY KEY (`comments_id`);

--
-- Indexes for table `tbl_director`
--
ALTER TABLE `tbl_director`
  ADD PRIMARY KEY (`dir_id`);

--
-- Indexes for table `tbl_l_mc`
--
ALTER TABLE `tbl_l_mc`
  ADD PRIMARY KEY (`mc_id`);

--
-- Indexes for table `tbl_l_md`
--
ALTER TABLE `tbl_l_md`
  ADD PRIMARY KEY (`md_id`);

--
-- Indexes for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  ADD PRIMARY KEY (`movies_id`);

--
-- Indexes for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD PRIMARY KEY (`rating_id`);

--
-- Indexes for table `tbl_studio`
--
ALTER TABLE `tbl_studio`
  ADD PRIMARY KEY (`studio_id`);

--
-- Indexes for table `tbl_type`
--
ALTER TABLE `tbl_type`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_cast`
--
ALTER TABLE `tbl_cast`
  MODIFY `cast_id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;
--
-- AUTO_INCREMENT for table `tbl_cat`
--
ALTER TABLE `tbl_cat`
  MODIFY `cat_id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  MODIFY `comments_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_director`
--
ALTER TABLE `tbl_director`
  MODIFY `dir_id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `tbl_l_mc`
--
ALTER TABLE `tbl_l_mc`
  MODIFY `mc_id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_l_md`
--
ALTER TABLE `tbl_l_md`
  MODIFY `md_id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  MODIFY `movies_id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  MODIFY `rating_id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_studio`
--
ALTER TABLE `tbl_studio`
  MODIFY `studio_id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `tbl_type`
--
ALTER TABLE `tbl_type`
  MODIFY `type_id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
