-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2024 at 11:34 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_recommendation`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Author` varchar(255) DEFAULT NULL,
  `Genre` varchar(255) DEFAULT NULL,
  `SubGenre` varchar(255) DEFAULT NULL,
  `UserRating` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `Title`, `Author`, `Genre`, `SubGenre`, `UserRating`) VALUES
(81, 'Fundamentals of Wavelets', 'Goswami, Jaideva', 'tech', 'signal_processing', NULL),
(82, 'Data Smart', 'Foreman, John', 'tech', 'data_science', NULL),
(83, 'God Created the Integers', 'Hawking, Stephen', 'tech', 'mathematics', NULL),
(84, 'Superfreakonomics', 'Dubner, Stephen', 'science', 'economics', NULL),
(85, 'Orientalism', 'Said, Edward', 'nonfiction', 'history', NULL),
(86, 'Nature of Statistical Learning Theory, The', 'Vapnik, Vladimir', 'tech', 'data_science', NULL),
(87, 'Integration of the Indian States', 'Menon, V P', 'nonfiction', 'history', 5),
(88, 'Drunkard\'s Walk, The', 'Mlodinow, Leonard', 'science', 'mathematics', NULL),
(89, 'Image Processing & Mathematical Morphology', 'Shih, Frank', 'tech', 'signal_processing', NULL),
(90, 'How to Think Like Sherlock Holmes', 'Konnikova, Maria', 'nonfiction', 'psychology', 2),
(91, 'Data Scientists at Work', 'Sebastian Gutierrez', 'tech', 'data_science', NULL),
(92, 'Slaughterhouse Five', 'Vonnegut, Kurt', 'fiction', 'classic', NULL),
(93, 'Birth of a Theorem', 'Villani, Cedric', 'science', 'mathematics', NULL),
(94, 'Structure & Interpretation of Computer Programs', 'Sussman, Gerald', 'tech', 'computer_science', NULL),
(95, 'Age of Wrath, The', 'Eraly, Abraham', 'nonfiction', 'history', 2),
(96, 'Trial, The', 'Kafka, Frank', 'fiction', 'classic', NULL),
(97, 'Statistical Decision Theory\'', 'Pratt, John', 'tech', 'data_science', NULL),
(98, 'Data Mining Handbook', 'Nisbet, Robert', 'tech', 'data_science', NULL),
(99, 'New Machiavelli, The', 'Wells, H. G.', 'fiction', 'novel', NULL),
(100, 'Physics & Philosophy', 'Heisenberg, Werner', 'philosophy', 'science', NULL),
(101, 'Making Software', 'Oram, Andy', 'tech', 'computer_science', NULL),
(102, 'Analysis, Vol I', 'Tao, Terence', 'tech', 'mathematics', NULL),
(103, 'Machine Learning for Hackers', 'Conway, Drew', 'tech', 'data_science', NULL),
(104, 'Signal and the Noise, The', 'Silver, Nate', 'tech', 'data_science', NULL),
(105, 'Python for Data Analysis', 'McKinney, Wes', 'tech', 'data_science', NULL),
(106, 'Introduction to Algorithms', 'Cormen, Thomas', 'tech', 'computer_science', NULL),
(107, 'Beautiful and the Damned, The', 'Deb, Siddhartha', 'nonfiction', 'history', 1),
(108, 'Outsider, The', 'Camus, Albert', 'fiction', 'classic', NULL),
(109, 'Complete Sherlock Holmes, The - Vol I', 'Doyle, Arthur Conan', 'fiction', 'classic', NULL),
(110, 'Complete Sherlock Holmes, The - Vol II', 'Doyle, Arthur Conan', 'fiction', 'classic', NULL),
(111, 'Wealth of Nations, The', 'Smith, Adam', 'science', 'economics', NULL),
(112, 'Pillars of the Earth, The', 'Follett, Ken', 'fiction', 'novel', NULL),
(113, 'Mein Kampf', 'Hitler, Adolf', 'nonfiction', 'autobiography', NULL),
(114, 'Tao of Physics, The', 'Capra, Fritjof', 'science', 'physics', NULL),
(115, 'Surely You\'re Joking Mr Feynman', 'Feynman, Richard', 'science', 'physics', NULL),
(116, 'Farewell to Arms, A', 'Hemingway, Ernest', 'fiction', 'classic', NULL),
(117, 'Veteran, The', 'Forsyth, Frederick', 'fiction', 'novel', NULL),
(118, 'False Impressions', 'Archer, Jeffery', 'fiction', 'novel', NULL),
(119, 'Last Lecture, The', 'Pausch, Randy', 'nonfiction', 'autobiography', NULL),
(120, 'Return of the Primitive', 'Rand, Ayn', 'philosophy', 'objectivism', NULL),
(121, 'Jurassic Park', 'Crichton, Michael', 'fiction', 'novel', NULL),
(122, 'Russian Journal, A', 'Steinbeck, John', 'nonfiction', 'history', 2),
(123, 'Tales of Mystery and Imagination', 'Poe, Edgar Allen', 'fiction', 'classic', NULL),
(124, 'Freakonomics', 'Dubner, Stephen', 'science', 'economics', NULL),
(125, 'Hidden Connections, The', 'Capra, Fritjof', 'science', 'physics', NULL),
(126, 'Story of Philosophy, The', 'Durant, Will', 'philosophy', 'history', NULL),
(127, 'Asami Asami', 'Deshpande, P L', 'fiction', 'novel', NULL),
(128, 'Journal of a Novel', 'Steinbeck, John', 'fiction', 'classic', NULL),
(129, 'Once There Was a War', 'Steinbeck, John', 'nonfiction', 'history', 4),
(130, 'Moon is Down, The', 'Steinbeck, John', 'fiction', 'classic', NULL),
(131, 'Brethren, The', 'Grisham, John', 'fiction', 'novel', NULL),
(132, 'In a Free State', 'Naipaul, V. S.', 'fiction', 'novel', NULL),
(133, 'Catch 22', 'Heller, Joseph', 'fiction', 'classic', NULL),
(134, 'Complete Mastermind, The', 'BBC', 'nonfiction', 'trivia', NULL),
(135, 'Dylan on Dylan', 'Dylan, Bob', 'nonfiction', 'autobiography', NULL),
(136, 'Soft Computing & Intelligent Systems', 'Gupta, Madan', 'tech', 'data_science', NULL),
(137, 'Textbook of Economic Theory', 'Stonier, Alfred', 'tech', 'economics', 5),
(138, 'Econometric Analysis', 'Greene, W. H.', 'tech', 'economics', 3),
(139, 'Learning OpenCV', 'Bradsky, Gary', 'tech', 'signal_processing', NULL),
(140, 'Data Structures Using C & C++', 'Tanenbaum, Andrew', 'tech', 'computer_science', NULL),
(141, 'Computer Vision, A Modern Approach', 'Forsyth, David', 'tech', 'signal_processing', NULL),
(142, 'Principles of Communication Systems', 'Taub, Schilling', 'tech', 'signal_processing', NULL),
(143, 'Let Us C', 'Kanetkar, Yashwant', 'tech', 'computer_science', NULL),
(144, 'Amulet of Samarkand, The', 'Stroud, Jonathan', 'fiction', 'novel', NULL),
(145, 'Crime and Punishment', 'Dostoevsky, Fyodor', 'fiction', 'classic', NULL),
(146, 'Angels & Demons', 'Brown, Dan', 'fiction', 'novel', NULL),
(147, 'Argumentative Indian, The', 'Sen, Amartya', 'nonfiction', 'history', NULL),
(148, 'Sea of Poppies', 'Ghosh, Amitav', 'fiction', 'novel', NULL),
(149, 'Idea of Justice, The', 'Sen, Amartya', 'philosophy', 'economics', NULL),
(150, 'Raisin in the Sun, A', 'Hansberry, Lorraine', 'fiction', 'novel', NULL),
(151, 'All the President\'s Men', 'Woodward, Bob', 'nonfiction', 'history', NULL),
(152, 'Prisoner of Birth, A', 'Archer, Jeffery', 'fiction', 'novel', NULL),
(153, 'Scoop!', 'Nayar, Kuldip', 'nonfiction', 'history', NULL),
(154, 'Ahe Manohar Tari', 'Deshpande, Sunita', 'nonfiction', 'autobiography', NULL),
(155, 'Last Mughal, The', 'Dalrymple, William', 'nonfiction', 'history', NULL),
(156, 'Social Choice & Welfare, Vol 39 No. 1', 'Various', 'tech', 'economics', 1),
(157, 'Radiowaril Bhashane & Shrutika', 'Deshpande, P L', 'nonfiction', 'misc', NULL),
(158, 'Gun Gayin Awadi', 'Deshpande, P L', 'nonfiction', 'misc', NULL),
(159, 'Aghal Paghal', 'Deshpande, P L', 'nonfiction', 'misc', NULL),
(160, 'Maqta-e-Ghalib', 'Garg, Sanjay', 'nonfiction', 'poetry', NULL),
(161, 'Beyond Degrees', NULL, 'philosophy', 'education', NULL),
(162, 'Manasa', 'Kale, V P', 'nonfiction', 'misc', NULL),
(163, 'India from Midnight to Milennium', 'Tharoor, Shashi', 'nonfiction', 'history', NULL),
(164, 'World\'s Greatest Trials, The', NULL, 'nonfiction', 'history', NULL),
(165, 'Great Indian Novel, The', 'Tharoor, Shashi', 'fiction', 'novel', NULL),
(166, 'O Jerusalem!', 'Lapierre, Dominique', 'nonfiction', 'history', NULL),
(167, 'City of Joy, The', 'Lapierre, Dominique', 'fiction', 'novel', NULL),
(168, 'Freedom at Midnight', 'Lapierre, Dominique', 'nonfiction', 'history', NULL),
(169, 'Winter of Our Discontent, The', 'Steinbeck, John', 'fiction', 'classic', NULL),
(170, 'On Education', 'Russell, Bertrand', 'philosophy', 'education', NULL),
(171, 'Free Will', 'Harris, Sam', 'nonfiction', 'psychology', 1),
(172, 'Bookless in Baghdad', 'Tharoor, Shashi', 'nonfiction', 'history', NULL),
(173, 'Case of the Lame Canary, The', 'Gardner, Earle Stanley', 'fiction', 'novel', NULL),
(174, 'Theory of Everything, The', 'Hawking, Stephen', 'science', 'physics', NULL),
(175, 'New Markets & Other Essays', 'Drucker, Peter', 'science', 'economics', NULL),
(176, 'Electric Universe', 'Bodanis, David', 'science', 'physics', NULL),
(177, 'Hunchback of Notre Dame, The', 'Hugo, Victor', 'fiction', 'classic', NULL),
(178, 'Burning Bright', 'Steinbeck, John', 'fiction', 'classic', NULL),
(179, 'Age of Discontuinity, The', 'Drucker, Peter', 'nonfiction', 'economics', NULL),
(180, 'Doctor in the Nude', 'Gordon, Richard', 'fiction', 'novel', NULL),
(181, 'Down and Out in Paris & London', 'Orwell, George', 'nonfiction', 'autobiography', NULL),
(182, 'Identity & Violence', 'Sen, Amartya', 'philosophy', 'philosophy', 2),
(183, 'Beyond the Three Seas', 'Dalrymple, William', 'nonfiction', 'history', NULL),
(184, 'World\'s Greatest Short Stories, The', NULL, 'fiction', 'classic', NULL),
(185, 'Talking Straight', 'Iacoca, Lee', 'nonfiction', 'autobiography', NULL),
(186, 'Maugham\'s Collected Short Stories, Vol 3', 'Maugham, William S', 'fiction', 'classic', NULL),
(187, 'Phantom of Manhattan, The', 'Forsyth, Frederick', 'fiction', 'classic', NULL),
(188, 'Ashenden of The British Agent', 'Maugham, William S', 'fiction', 'classic', NULL),
(189, 'Zen & The Art of Motorcycle Maintenance', 'Pirsig, Robert', 'philosophy', 'autobiography', NULL),
(190, 'Great War for Civilization, The', 'Fisk, Robert', 'nonfiction', 'history', NULL),
(191, 'We the Living', 'Rand, Ayn', 'fiction', 'novel', NULL),
(192, 'Artist and the Mathematician, The', 'Aczel, Amir', 'science', 'mathematics', NULL),
(193, 'History of Western Philosophy', 'Russell, Bertrand', 'philosophy', 'philosophy', NULL),
(194, 'Selected Short Stories', NULL, 'fiction', 'classic', NULL),
(195, 'Rationality & Freedom', 'Sen, Amartya', 'science', 'economics', NULL),
(196, 'Clash of Civilizations and Remaking of the World Order', 'Huntington, Samuel', 'nonfiction', 'history', NULL),
(197, 'Uncommon Wisdom', 'Capra, Fritjof', 'nonfiction', 'anthology', NULL),
(198, 'One', 'Bach, Richard', 'nonfiction', 'autobiography', NULL),
(199, 'Karl Marx Biography', NULL, 'nonfiction', 'autobiography', NULL),
(200, 'To Sir With Love', 'Braithwaite', 'fiction', 'classic', NULL),
(201, 'Half A Life', 'Naipaul, V S', 'fiction', 'novel', NULL),
(202, 'Discovery of India, The', 'Nehru, Jawaharlal', 'nonfiction', 'history', NULL),
(203, 'Apulki', 'Deshpande, P L', 'nonfiction', 'misc', NULL),
(204, 'Unpopular Essays', 'Russell, Bertrand', 'philosophy', 'philosophy', NULL),
(205, 'Deceiver, The', 'Forsyth, Frederick', 'fiction', 'novel', NULL),
(206, 'Veil: Secret Wars of the CIA', 'Woodward, Bob', 'nonfiction', 'history', NULL),
(207, 'Char Shabda', 'Deshpande, P L', 'nonfiction', 'misc', NULL),
(208, 'Rosy is My Relative', 'Durrell, Gerald', 'fiction', 'novel', NULL),
(209, 'Moon and Sixpence, The', 'Maugham, William S', 'fiction', 'classic', NULL),
(210, 'Political Philosophers', NULL, 'philosophy', 'politics', NULL),
(211, 'Short History of the World, A', 'Wells, H G', 'nonfiction', 'history', NULL),
(212, 'Trembling of a Leaf, The', 'Maugham, William S', 'fiction', 'novel', NULL),
(213, 'Doctor on the Brain', 'Gordon, Richard', 'fiction', 'novel', NULL),
(214, 'Simpsons & Their Mathematical Secrets', 'Singh, Simon', 'science', 'mathematics', NULL),
(215, 'Pattern Classification', 'Duda, Hart', 'tech', 'data_science', NULL),
(216, 'From Beirut to Jerusalem', 'Friedman, Thomas', 'nonfiction', 'history', NULL),
(217, 'Code Book, The', 'Singh, Simon', 'science', 'mathematics', NULL),
(218, 'Age of the Warrior, The', 'Fisk, Robert', 'nonfiction', 'history', NULL),
(219, 'Final Crisis', NULL, 'fiction', 'comic', NULL),
(220, 'Killing Joke, The', NULL, 'fiction', 'comic', NULL),
(221, 'Flashpoint', NULL, 'fiction', 'comic', NULL),
(222, 'Batman Earth One', NULL, 'fiction', 'comic', NULL),
(223, 'Crisis on Infinite Earths', NULL, 'fiction', 'comic', NULL),
(224, 'Numbers Behind Numb3rs, The', 'Devlin, Keith', 'science', 'mathematics', NULL),
(225, 'Superman Earth One - 1', NULL, 'fiction', 'comic', NULL),
(226, 'Superman Earth One - 2', NULL, 'fiction', 'comic', NULL),
(227, 'Justice League: Throne of Atlantis', NULL, 'fiction', 'comic', NULL),
(228, 'Justice League: The Villain\'s Journey', NULL, 'fiction', 'comic', NULL),
(229, 'Death of Superman, The', NULL, 'fiction', 'comic', NULL),
(230, 'History of the DC Universe', NULL, 'fiction', 'comic', NULL),
(231, 'Batman: The Long Halloween', NULL, 'fiction', 'comic', NULL),
(232, 'Life in Letters, A', 'Steinbeck, John', 'nonfiction', 'autobiography', NULL),
(233, 'Information, The', 'Gleick, James', 'science', 'mathematics', NULL),
(234, 'Journal of Economics, vol 106 No 3', NULL, 'science', 'economics', NULL),
(235, 'Elements of Information Theory', 'Thomas, Joy', 'tech', 'signal_processing', NULL),
(236, 'Power Electronics - Rashid', 'Rashid, Muhammad', 'tech', 'computer_science', NULL),
(237, 'Power Electronics - Mohan', 'Mohan, Ned', 'tech', 'computer_science', NULL),
(238, 'Neural Networks', 'Haykin, Simon', 'tech', 'data_science', NULL),
(239, 'Grapes of Wrath, The', 'Steinbeck, John', 'fiction', 'classic', NULL),
(240, 'Vyakti ani Valli', 'Deshpande, P L', 'nonfiction', 'misc', NULL),
(241, 'Statistical Learning Theory', 'Vapnik, Vladimir', 'tech', 'data_science', NULL),
(242, 'Empire of the Mughal - The Tainted Throne', 'Rutherford, Alex', 'nonfiction', 'history', NULL),
(243, 'Empire of the Mughal - Brothers at War', 'Rutherford, Alex', 'nonfiction', 'history', NULL),
(244, 'Empire of the Mughal - Ruler of the World', 'Rutherford, Alex', 'nonfiction', 'history', NULL),
(245, 'Empire of the Mughal - The Serpent\'s Tooth', 'Rutherford, Alex', 'nonfiction', 'history', NULL),
(246, 'Empire of the Mughal - Raiders from the North', 'Rutherford, Alex', 'nonfiction', 'history', NULL),
(247, 'Mossad', 'Baz-Zohar, Michael', 'nonfiction', 'history', NULL),
(248, 'Jim Corbett Omnibus', 'Corbett, Jim', 'nonfiction', 'history', NULL),
(249, '20000 Leagues Under the Sea', 'Verne, Jules', 'fiction', 'novel', NULL),
(250, 'Batatyachi Chal', 'Deshpande P L', 'fiction', 'novel', NULL),
(251, 'Hafasavnuk', 'Deshpande P L', 'fiction', 'novel', NULL),
(252, 'Urlasurla', 'Deshpande P L', 'fiction', 'novel', NULL),
(253, 'Pointers in C', 'Kanetkar, Yashwant', 'tech', 'computer_science', NULL),
(254, 'Cathedral and the Bazaar, The', 'Raymond, Eric', 'tech', 'computer_science', NULL),
(255, 'Design with OpAmps', 'Franco, Sergio', 'tech', 'computer_science', NULL),
(256, 'Think Complexity', 'Downey, Allen', 'tech', 'data_science', NULL),
(257, 'Devil\'s Advocate, The', 'West, Morris', 'fiction', 'novel', NULL),
(258, 'Ayn Rand Answers', 'Rand, Ayn', 'philosophy', 'objectivism', NULL),
(259, 'Philosophy: Who Needs It', 'Rand, Ayn', 'philosophy', 'objectivism', NULL),
(260, 'World\'s Great Thinkers, The', NULL, 'science', 'physics', NULL),
(261, 'Data Analysis with Open Source Tools', 'Janert, Phillip', 'tech', 'data_science', NULL),
(262, 'Broca\'s Brain', 'Sagan, Carl', 'science', 'physics', NULL),
(263, 'Men of Mathematics', 'Bell, E T', 'science', 'mathematics', NULL),
(264, 'Oxford book of Modern Science Writing', 'Dawkins, Richard', 'science', 'science', NULL),
(265, 'Justice, Judiciary and Democracy', 'Ranjan, Sudhanshu', 'nonfiction', 'legal', NULL),
(266, 'Arthashastra, The', 'Kautiyla', 'philosophy', 'philosophy', NULL),
(267, 'We the People', 'Palkhivala', 'philosophy', 'philosophy', NULL),
(268, 'We the Nation', 'Palkhivala', 'philosophy', 'philosophy', NULL),
(269, 'Courtroom Genius, The', 'Sorabjee', 'nonfiction', 'autobiography', NULL),
(270, 'Dongri to Dubai', 'Zaidi, Hussain', 'nonfiction', 'history', NULL),
(271, 'History of England, Foundation', 'Ackroyd, Peter', 'nonfiction', 'history', NULL),
(272, 'City of Djinns', 'Dalrymple, William', 'nonfiction', 'history', NULL),
(273, 'India\'s Legal System', 'Nariman', 'nonfiction', 'legal', NULL),
(274, 'More Tears to Cry', 'Sassoon, Jean', 'fiction', 'novel', NULL),
(275, 'Ropemaker, The', 'Dickinson, Peter', 'fiction', 'novel', NULL),
(276, 'Angels & Demons', 'Brown, Dan', 'fiction', 'novel', NULL),
(277, 'Judge, The', NULL, 'fiction', 'novel', NULL),
(278, 'Attorney, The', NULL, 'fiction', 'novel', NULL),
(279, 'Prince, The', 'Machiavelli', 'fiction', 'classic', NULL),
(280, 'Eyeless in Gaza', 'Huxley, Aldous', 'fiction', 'novel', NULL),
(281, 'Tales of Beedle the Bard', 'Rowling, J K', 'fiction', 'novel', NULL),
(282, 'Girl with the Dragon Tattoo', 'Larsson, Steig', 'fiction', 'novel', NULL),
(283, 'Girl who kicked the Hornet\'s Nest', 'Larsson, Steig', 'fiction', 'novel', NULL),
(284, 'Girl who played with Fire', 'Larsson, Steig', 'fiction', 'novel', NULL),
(285, 'Batman Handbook', NULL, 'fiction', 'comic', NULL),
(286, 'Murphy\'s Law', NULL, 'philosophy', 'psychology', NULL),
(287, 'Structure and Randomness', 'Tao, Terence', 'science', 'mathematics', NULL),
(288, 'Image Processing with MATLAB', 'Eddins, Steve', 'tech', 'signal_processing', NULL),
(289, 'Animal Farm', 'Orwell, George', 'fiction', 'classic', NULL),
(290, 'Idiot, The', 'Dostoevsky, Fyodor', 'fiction', 'classic', NULL),
(291, 'Christmas Carol, A', 'Dickens, Charles', 'fiction', 'classic', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(1, 'mohit123@gmail.com', 'Mohit@1234'),
(2, 'fk510199@gmail.com', 'Farhan@#123'),
(3, 'Ashmirakh45@gmail.com', 'Ashmira21#');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=292;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
