-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2020 at 05:24 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr11_mireillebebon_petadoption`
--

-- --------------------------------------------------------

--
-- Table structure for table `allpets`
--

CREATE TABLE `allpets` (
  `ID` int(11) NOT NULL,
  `name` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `image` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `descr` text COLLATE latin1_general_ci,
  `city` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `zip_code` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `address` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `age` date NOT NULL,
  `available` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `allpets`
--

INSERT INTO `allpets` (`ID`, `name`, `image`, `descr`, `city`, `zip_code`, `address`, `DateOfBirth`, `age`, `available`) VALUES
(1, 'Honey', 'cheval.jpg', 'Adopting a horse is a big decision, in more ways than one! I grew up riding and caring for horses, with a big lesson/riding barn on one side of my childhood home, a small two-horse barn where we kept our adopted one-eyed pony on the other side. When I was a teenager, we build a small barn of our own in our backyard. We moved the pony in, along with a friend’s horse after that horse, a 3 year old thoroughbred – not a safe amateur’s horse – bucked him off and broke his back. We got professional help with the horse, and although he still occasionally had impressive bucking fits (my mom called him “opinionated”), he became a well-loved member of our family.', 'Graz', '8020', 'Hans-List-Platz 1', '2016-01-20', '0000-00-00', 'yes'),
(2, 'Lady', 'chien.jpg', 'Very calm loving dog and Very respectful of other dogs nHeart murmur grade does not slow him down playing at doggy day care\r\nCalm in his kennel\r\nGood w/ all physical manipulations,\r\nNo resource guarding\r\nTakes treats gently nGood w/ cats\r\nOK w/ kids\r\nPlayful w/ dogs (big and small)\r\nKnows basic commands: sit, paw, lie down in french and English\r\nWalks well on a no pull harness', 'Baden', '2500', 'Kaiser-Franz-Ring 1', '2019-03-15', '0000-00-00', 'yes'),
(3, 'Billy Jeans', 'chien1.jpg', 'Billy was abandoned in a warehouse and was their for at least a month. She was afraid and alone until a good Samaritan saw her. My rescue was on the phone telling her how to safely catch her. We where successful in catching her and she was so grateful. Hula was then let down again by an adopter . This sweet angel needs a human who will not give up on her. She is loving and silly and kind, she will have you at Hello. Billy has just been fully trained knows all commands and she is a very smart girl. Let me Say this sweet girl is so much fun and so loving, she is so gentle and and is very loyal to any family that takes her in forever.', 'Bad Vöslau', '2540', 'Rathaus Schloßplatz 1', '2017-05-12', '0000-00-00', 'no'),
(4, 'Sahara', 'girafe.jpg', 'By adopting a giraffe you can help us save giraffe in Africa.Giraffes are under threat, both in captivity and in the wild. Wild giraffes have been extensively hunted for their meat, but today their main threat is loss of habitat.\r\n\r\nWild giraffes live complex lives and roam large expanses, so being confined to small enclosures can lead to extreme frustration and boredom.Help protect giraffes in the wild with an animal adoption, and you\'ll receive an exclusive adoption pack containing a soft toy, animal story, species fact sheet, personalised certificate and glossy photo. Plus, we’ll send you our Adopt magazine twice a year with updates on all our wildlife adoptions – perfect for animal lovers.', 'Vienna', '1011', 'Fleischmarkt 20', '2020-10-17', '0000-00-00', 'no'),
(5, 'Bernard', 'lama1.jpg', 'We are happy that you have decided to adopt a Llama. Llama adoption is a wonderful way to provide a Llama a second chance and caring environment. Most pets arrive at shelters because the owner had to move, could no longer afford the pet, had a death in the family, or simply gave up the responsibly of being a care taker for a Llama. Before bringing home a Llama, make sure you have considered the full impact of your decision. Below is a brief overview of the type of needs a Llama might require and what you will need to consider for the life time care of a Llama.', 'Bad Vöslau', '2540', 'Rathaus Schloßplatz 1', '2019-08-07', '0000-00-00', 'yes'),
(6, 'Booboo', 'mouton.jpg', 'Booboo found it hard to get along with his brother (though he loved his sister still) and ended up separated from his litter mates. He\'s learning to get along with other rabbits again and his foster mom has brought him out of his shell. If interested in adopting, please fill out an application', 'Bad Vöslau', '2540', 'Rathaus Schloßplatz 1', '2018-06-12', '0000-00-00', 'no'),
(7, 'Biscuit', 'vache.jpg', 'Biscuit found it hard to get along with his brother (though he loved his sister still) and ended up separated from his litter mates. He\'s learning to get along with other rabbits again and his foster mom has brought him out of his shell. If interested in adopting, please fill out an application', 'Mauerbach', '3001', 'steinbachstrasse 36', '2017-10-30', '0000-00-00', 'yes'),
(8, 'Ebony', 'chienne.jpg', 'Ebony is a dream dog she will cuddle with you and sleep under any blankets and if you take a little bal out she will be ready to play. sHe brings the ball back and will keep you laughing all day. she is the most easy going guy. He is not hyper, not a barker, he is wonderful. she is crate trained, leash trained, potty trained and fetch trained. How this angel ended up in a shelter is beyond me. They claimed she was not potty trained, would cry in a crate and did not like men, non of this could be further then the truth. Leaving this little guy to die in a shelter was heart breaking. We saw him and instantly fell in love. And you will too when you meet him.', 'Tulln an der Donau', '3430', 'Konrad Lorenz Strasse 20', '2019-04-29', '0000-00-00', 'no'),
(9, 'Marshmellow', 'cochon.jpg', 'Originally from Wisconsin, quiet but confident Marshmellow has always been really into traveling. He has lived in a few different parts of Austria but is ready to settle down and find a forever home. Marshmellow is a very handsome, larger pot belly who was born in 2018. Good-natured and very sweet to other pigs, he needs a home with at least one other pig friend. Marshmellow would love a family that will give him the space to roam and belly scratches when he so desires.', 'Tulln an der Donau', '3430', 'Konrad Lorenz Strasse 20', '2018-07-12', '0000-00-00', 'no'),
(10, 'Nugget', 'lama.jpg', 'We are happy that you have decided to adopt a Llama. Llama adoption is a wonderful way to provide a Llama a second chance and caring environment. Most pets arrive at shelters because the owner had to move, could no longer afford the pet, had a death in the family, or simply gave up the responsibly of being a care taker for a Llama. Before bringing home a Llama, make sure you have considered the full impact of your decision. Below is a brief overview of the type of needs a Llama might require and what you will need to consider for the life time care of a Llama.', 'Bad Vöslau', '2540', 'Rathaus Schloßplatz 1', '2018-05-20', '0000-00-00', 'yes'),
(11, 'Paddington', 'zion.jpg', 'Paddington is a good looking Donkey born in 2019. He has a huge heart and tons of donkenality. He was a successful anymal in his early life, but ended up in a bad situation and came to us as a neglect case. His love of life and good nature allowed him to bounce right back, though, and he\'s now thriving and enjoying every minute of his new lease on life. He is one of those guys who gets along well with any other horse or mule we\'ve put him with and he\'s really friendly with people. He loves to learn and meets us at the gate wanting to come out and play. He\'s generally healthy and low maintenance, but has a few hitches left over from his racing career that we feel make him uncomfortable being ridden. But there\'s no way not to love Red once you get to know him. Come by and meet him sometime - to know him is to love him!', 'Tulln an der Donau', '3430', 'Konrad Lorenz Strasse 20', '2018-09-15', '0000-00-00', 'yes'),
(12, 'Biquette', 'biquette.jpg', 'Beautiful Biquette was born in 2019 and was rescued from northern Austria, where she had been used in a laboratory for breast cancer research.She is sweet and calm. She needs a forever retirement home with another goat. She\'s also looking for someone who understands that she doesn\'t want to live in her past, but is ready for her future.', 'Vienna', '1020', 'Praterstrasse 72', '2017-11-23', '0000-00-00', 'no'),
(13, 'Augustus', 'old.jpg', 'Augustus, born in 2015, is a curious, friendly Alpine mix from Southern Utah. He likes attention of all kinds, especially being brushed, as well as eating yummy timothy pellets and being with other goats. He\'ll call out to his friends in the goat barn if he hasn\'t seen them in a couple minutes, just to make sure they\'re okay. Mostly brown with a little bit of white, Augustus had a bumpy beginning so he needs a family who has lots of time to spend loving and cherishing him.', 'Tulln an der Donau', '3430', 'Konrad Lorenz Strasse 20', '2015-08-12', '0000-00-00', 'no'),
(14, 'chat', 'chat.jpg', 'Beautiful Chat Kitty is a white female domestic short hair cat, who came to us from a local animal control shelter.Chat has a cute little blue eyes.She has a little bit of an attitude at first, until she gets to know you, which is totally fine because that means she\'s smart. But she does have anxiety which causes her to be defensive and unpredictable. She really does require an experienced adopter, and cannot be around kids or other cats or dogs. She needs a dedicated special friend. Who would love an Chat Kitty in their life?', 'Vienna', '1011', 'Fleischmarkt 20', '2020-10-10', '0000-00-00', 'no'),
(15, 'Caneton', 'caneton.jpg', 'Beautiful Caneton is a domestic Duck, who came to us from a local animal control shelter.Caneton has a cute little yellow color.She enjoy be around kids or people. She needs a dedicated special friend. Who would love an Caneton in their life?', 'Tulln an der Donau', '3430', 'Konrad Lorenz Strasse 20', '2019-12-25', '0000-00-00', 'no'),
(16, 'Perroquet', 'perroquet.jpg', ' Many first-time bird adopters are just like me: they think birds and parrots are beautiful, fascinating creatures, but know almost nothing about what would be involved with adopting and caring for a bird, especially a parrot. Fortunately, there are great bird and parrot experts who can help guide us bird novices through deciding if we are ready to adopt a parrot, cockatoo, canary, or any other bird. Read on for some basic steps to get you ready to adopt a bird!', 'Vienna', '1020', 'Praterstrasse 72', '2015-04-16', '0000-00-00', 'yes'),
(18, 'Lapin', 'lapin.jpg', 'Pia writes: According to Cindy, rabbits are fundamentally different from dogs and cats and therefore require an entirely different care-giving approach. We cannot simply apply what we know about cats and dogs to rabbits. \r\n\r\nFor one thing, rabbits are prey animals in nature. That means they are more fragile and fearful than dogs or cats, both natural predators. While they can be held and cuddled, bunnies may respond fearfully at first, perhaps with a sudden movement or harmless nip that could startle a small child and result in the bunny being dropped. For that reason, a rabbit may not be an ideal companion animal for kids under five.', 'Baden', '2500', 'Kaiser-Franz-Ring 1', '2020-01-30', '0000-00-00', 'yes'),
(19, 'Jimmie Jams', 'koalaj.jpg', 'If you\'re looking for trouble, look no further than the one and only Jimmie Jams. Jimmie is an energetic young man who is constantly bugging his mum Ella for a ride on her back. He loves his eucalyptus leaves almost as much as he loves swinging off the scales on weigh day, even when he has already had his turn. Jimmie is always up for a cuddle and loves to meet new people and show off his good looks to the visitors. ', 'Graz', '8020', 'Hans-List-Platz 1', '2019-11-03', '0000-00-00', 'no'),
(20, 'Joey', 'poisson1.jpg', 'Despite any rumors you may have heard, goldfish are intelligent, sensitive, social animals. They can experience loneliness, boredom, excitement, and fear.', 'Graz', '8020', '', '2015-12-31', '0000-00-00', 'yes'),
(50, 'fifi', 'canard.jpg', '', 'vienna', '1130', '', '2020-01-01', '0000-00-00', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `big`
--

CREATE TABLE `big` (
  `ID` int(11) NOT NULL,
  `big_name` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `big_image` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `pet_group` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `big_descr` text COLLATE latin1_general_ci,
  `city` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `zip_code` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `address` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `hobby` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `available` varchar(110) COLLATE latin1_general_ci NOT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `age` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `big`
--

INSERT INTO `big` (`ID`, `big_name`, `big_image`, `pet_group`, `big_descr`, `city`, `zip_code`, `address`, `hobby`, `available`, `DateOfBirth`, `age`) VALUES
(1, 'Honey', 'cheval.jpg', 'big', 'Adopting a horse is a big decision, in more ways than one! I grew up riding and caring for horses, with a big lesson/riding barn on one side of my childhood home, a small two-horse barn where we kept our adopted one-eyed pony on the other side. When I was a teenager, we build a small barn of our own in our backyard. We moved the pony in, along with a friend’s horse after that horse, a 3 year old thoroughbred – not a safe amateur’s horse – bucked him off and broke his back. We got professional help with the horse, and although he still occasionally had impressive bucking fits (my mom called him “opinionated”), he became a well-loved member of our family.', 'Graz', '8020', 'Hans-List-Platz 1', 'rolling himself in the grass', 'yes', NULL, '0000-00-00'),
(2, 'Lady', 'chien.jpg', 'big', 'Very calm loving dog\r\nVery respectful of other dogs\r\nHeart murmur grade 1/6 does not slow him down playing at doggy day care\r\nCalm in his kennel\r\nGood w/ all physical manipulations,\r\nNo resource guarding\r\nTakes treats gently\r\nGood w/ cats\r\nOK w/ kids\r\nPlayful w/ dogs (big and small)\r\nKnows basic commands: sit, paw, lie down in french and English\r\nWalks well on a no pull harness', 'Baden', '2500', 'Kaiser-Franz-Ring 1', 'enjoy playing', 'yes', NULL, '0000-00-00'),
(3, 'Billy Jeans', 'chien1.jpg', 'big', 'Billy was abandoned in a warehouse and was their for at least a month. She was afraid and alone until a good Samaritan saw her. My rescue was on the phone telling her how to safely catch her. We where successful in catching her and she was so grateful. Hula was then let down again by an adopter . This sweet angel needs a human who will not give up on her. She is loving and silly and kind, she will have you at Hello. Billy has just been fully trained knows all commands and she is a very smart girl. Let me Say this sweet girl is so much fun and so loving, she is so gentle and and is very loyal to any family that takes her in forever.', 'Bad Vöslau', '2540', 'Rathaus Schloßplatz 1', 'enjoy running', 'no', NULL, '0000-00-00'),
(4, 'Sahara', 'girafe.jpg', 'big', 'By adopting a giraffe you can help us save giraffe in Africa.Giraffes are under threat, both in captivity and in the wild. Wild giraffes have been extensively hunted for their meat, but today their main threat is loss of habitat.\r\n\r\nWild giraffes live complex lives and roam large expanses, so being confined to small enclosures can lead to extreme frustration and boredom.Help protect giraffes in the wild with an animal adoption, and you\'ll receive an exclusive adoption pack containing a soft toy, animal story, species fact sheet, personalised certificate and glossy photo. Plus, we’ll send you our Adopt magazine twice a year with updates on all our wildlife adoptions – perfect for animal lovers.', 'Vienna', '1011', 'Fleischmarkt 20', '', 'no', NULL, '0000-00-00'),
(5, 'Bernard', 'lama1.jpg', 'big', 'We are happy that you have decided to adopt a Llama. Llama adoption is a wonderful way to provide a Llama a second chance and caring environment. Most pets arrive at shelters because the owner had to move, could no longer afford the pet, had a death in the family, or simply gave up the responsibly of being a care taker for a Llama. Before bringing home a Llama, make sure you have considered the full impact of your decision. Below is a brief overview of the type of needs a Llama might require and what you will need to consider for the life time care of a Llama.', 'Bad Vöslau', '2540', 'Rathaus Schloßplatz 1', 'enjoy eating', 'yes', NULL, '0000-00-00'),
(6, 'Booboo', 'mouton.jpg', 'big', 'Booboo found it hard to get along with his brother (though he loved his sister still) and ended up separated from his litter mates. He\'s learning to get along with other rabbits again and his foster mom has brought him out of his shell. If interested in adopting, please fill out an application', 'Bad Vöslau', '2540', 'Rathaus Schloßplatz 1', 'enjoy running', 'no', NULL, '0000-00-00'),
(7, 'Biscuit', 'vache.jpg', 'big', 'Biscuit found it hard to get along with his brother (though he loved his sister still) and ended up separated from his litter mates. He\'s learning to get along with other rabbits again and his foster mom has brought him out of his shell. If interested in adopting, please fill out an application', 'Mauerbach', '3001', 'steinbachstrasse 36', 'enjoy staying outside', 'yes', NULL, '0000-00-00'),
(8, 'Ebony', 'chienne.jpg', 'big', 'Ebony is a dream dog she will cuddle with you and sleep under any blankets and if you take a little bal out she will be ready to play. sHe brings the ball back and will keep you laughing all day. she is the most easy going guy. He is not hyper, not a barker, he is wonderful. she is crate trained, leash trained, potty trained and fetch trained. How this angel ended up in a shelter is beyond me. They claimed she was not potty trained, would cry in a crate and did not like men, non of this could be further then the truth. Leaving this little guy to die in a shelter was heart breaking. We saw him and instantly fell in love. And you will too when you meet him.', 'Tulln an der Donau', '3430', 'Konrad Lorenz Strasse 20', 'she like to play', 'no', NULL, '0000-00-00'),
(9, 'Marshmellow', 'cochon.jpg', 'big', 'Originally from Wisconsin, quiet but confident Marshmellow has always been really into traveling. He has lived in a few different parts of Austria but is ready to settle down and find a forever home. Marshmellow is a very handsome, larger pot belly who was born in 2018. Good-natured and very sweet to other pigs, he needs a home with at least one other pig friend. Marshmellow would love a family that will give him the space to roam and belly scratches when he so desires.', 'Tulln an der Donau', '3430', 'Konrad Lorenz Strasse 20', 'he like belly scratches', 'no', NULL, '0000-00-00'),
(10, 'Nugget', 'lama.jpg', 'big', 'We are happy that you have decided to adopt a Llama. Llama adoption is a wonderful way to provide a Llama a second chance and caring environment. Most pets arrive at shelters because the owner had to move, could no longer afford the pet, had a death in the family, or simply gave up the responsibly of being a care taker for a Llama. Before bringing home a Llama, make sure you have considered the full impact of your decision. Below is a brief overview of the type of needs a Llama might require and what you will need to consider for the life time care of a Llama.', 'Bad Vöslau', '2540', 'Rathaus Schloßplatz 1', 'enjoy eating', 'yes', NULL, '0000-00-00'),
(11, 'Paddington', 'zion.jpg', 'big', 'Paddington is a good looking Donkey born in 2019. He has a huge heart and tons of donkenality. He was a successful anymal in his early life, but ended up in a bad situation and came to us as a neglect case. His love of life and good nature allowed him to bounce right back, though, and he\'s now thriving and enjoying every minute of his new lease on life. He is one of those guys who gets along well with any other horse or mule we\'ve put him with and he\'s really friendly with people. He loves to learn and meets us at the gate wanting to come out and play. He\'s generally healthy and low maintenance, but has a few hitches left over from his racing career that we feel make him uncomfortable being ridden. But there\'s no way not to love Red once you get to know him. Come by and meet him sometime - to know him is to love him!', 'Tulln an der Donau', '3430', 'Konrad Lorenz Strasse 20', 'she like to play', 'yes', NULL, '0000-00-00'),
(12, 'Biquette', 'biquette.jpg', 'big', 'Beautiful Biquette was born in 2019 and was rescued from northern Austria, where she had been used in a laboratory for breast cancer research.She is sweet and calm. She needs a forever retirement home with another goat. She\'s also looking for someone who understands that she doesn\'t want to live in her past, but is ready for her future.', 'Vienna', '1020', 'Praterstrasse 72', 'enyoy company', 'no', NULL, '0000-00-00'),
(13, 'Augustus', 'old.jpg', 'big', 'Augustus, born in 2015, is a curious, friendly Alpine mix from Southern Utah. He likes attention of all kinds, especially being brushed, as well as eating yummy timothy pellets and being with other goats. He\'ll call out to his friends in the goat barn if he hasn\'t seen them in a couple minutes, just to make sure they\'re okay. Mostly brown with a little bit of white, Augustus had a bumpy beginning so he needs a family who has lots of time to spend loving and cherishing him.', 'Tulln an der Donau', '3430', 'Konrad Lorenz Strasse 20', 'he is enjoying playing', 'no', NULL, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `markers`
--

CREATE TABLE `markers` (
  `ID` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `address` varchar(80) NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  `type` varchar(30) NOT NULL,
  `image` varchar(40) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `markers`
--

INSERT INTO `markers` (`ID`, `name`, `address`, `lat`, `lng`, `type`, `image`) VALUES
(1, 'Honey', 'Hans-List-Platz 1 ', 47.076668, 15.421371, 'Big', 'cheval.jpg'),
(2, 'Jimmy Jams', 'Hans-List-Platz 1', 47.076668, 15.421371, 'small', 'koalaj.jpg'),
(3, 'Joey', ' schmiedgasse 26', 47.076668, 15.421371, 'small', 'poisson1.jpg'),
(4, 'Sahara', ' Fleischmarkt 20 1011 Vienna', 48.210033, 16.363449, 'Big', 'girafe.jpg'),
(5, 'Biscuit', 'steinbachstrasse 36 3001 mauerbach', 48.210033, 16.363449, 'Small', 'vache.jpg'),
(6, 'Perroquet', 'Praterstrasse 72 1020 Vienna', 48.210033, 16.363449, 'Small', 'perroquet.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `ID` int(11) NOT NULL,
  `file_name` varchar(225) NOT NULL,
  `file_description` text NOT NULL,
  `file_uploader` varchar(225) NOT NULL,
  `file_uploaded_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `file_uploaded_to` varchar(225) NOT NULL,
  `file` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL DEFAULT 'not approved yet'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`ID`, `file_name`, `file_description`, `file_uploader`, `file_uploaded_on`, `file_uploaded_to`, `file`, `status`) VALUES
(1, 'small', 'a brave one', 'user', '2020-03-28 13:23:02', 'user2', '977247.jpg', 'not approved yet'),
(2, 'big', 'a brave one', 'user', '2020-03-28 13:38:24', 'user2', '951120.jpg', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(30) NOT NULL,
  `username` varchar(225) NOT NULL,
  `name` varchar(225) NOT NULL,
  `role` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `image` varchar(225) NOT NULL DEFAULT 'profile.jpg',
  `joindate` varchar(225) NOT NULL,
  `savedpet` varchar(225) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `username`, `name`, `role`, `email`, `password`, `image`, `joindate`, `savedpet`) VALUES
(58, 'adminroot', 'admin', 'admin', 'jane.mireille@gmail.com', '$2y$10$6Qmfn.xHHC7kkuYXhqGYt.pwgT282EABmc9RfpQGmXdgmcEqdqKyy', 'profile.jpg', 'March 28, 2020', ''),
(27, 'user', 'user2', 'User', 'user90@gmail.com', '$2y$10$Z1H.ruYjbMSp07EhejzS0O1Fr7PgFdjqbWmtu7/j68TXr55gZ2Msu', '895979.jpg', 'July 19, 2017', '');

-- --------------------------------------------------------

--
-- Table structure for table `young`
--

CREATE TABLE `young` (
  `ID` int(11) NOT NULL,
  `young_name` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `young_image` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `pet_group` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `young_descr` text COLLATE latin1_general_ci,
  `city` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `zip_code` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `address` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `website` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `available` varchar(110) COLLATE latin1_general_ci NOT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `age` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `young`
--

INSERT INTO `young` (`ID`, `young_name`, `young_image`, `pet_group`, `young_descr`, `city`, `zip_code`, `address`, `website`, `available`, `DateOfBirth`, `age`) VALUES
(1, 'chat', 'chat.jpg', 'Young', 'Beautiful Chat Kitty is a white female domestic short hair cat, who came to us from a local animal control shelter.Chat has a cute little blue eyes.She has a little bit of an attitude at first, until she gets to know you, which is totally fine because that means she\'s smart. But she does have anxiety which causes her to be defensive and unpredictable. She really does require an experienced adopter, and cannot be around kids or other cats or dogs. She needs a dedicated special friend. Who would love an Chat Kitty in their life?', 'Vienna', '1011', 'Fleischmarkt 20', 'www.petfinder.com', 'no', NULL, '0000-00-00'),
(2, 'Caneton', 'caneton.jpg', 'young', 'Beautiful Caneton is a domestic Duck, who came to us from a local animal control shelter.Caneton has a cute little yellow color.She enjoy be around kids or people. She needs a dedicated special friend. Who would love an Caneton in their life?', 'Tulln an der Donau', '3430', 'Konrad Lorenz Strasse 20', 'www.planetanimal.com', 'no', NULL, '0000-00-00'),
(3, 'Perroquet', 'perroquet.jpg', 'Young', ' Many first-time bird adopters are just like me: they think birds and parrots are beautiful, fascinating creatures, but know almost nothing about what would be involved with adopting and caring for a bird, especially a parrot. Fortunately, there are great bird and parrot experts who can help guide us bird novices through deciding if we are ready to adopt a parrot, cockatoo, canary, or any other bird. Read on for some basic steps to get you ready to adopt a bird!', 'Vienna', '1020', 'Praterstrasse 72', 'www.planetanimal.com', 'yes', NULL, '0000-00-00'),
(4, 'Piggy', 'piggy.jpg', 'Young', 'Guinea pigs are gentle, sweet pets who have a docile nature – not to mention are totally adorable! They respond to being handled, fed, and pet, and are also relatively easy to take care of making them a popular and fun pet for families. Guinea pigs thrive in groups and are social animals who love to bond with others!\r\n\r\nIf you’ve never had a guinea pig before you might wonder what they eat. Grass is the guinea pig’s natural diet and it’s also good for them to feed on fresh grass hay (called timothy hay) as well as food pellets. Interestingly enough, unlike other mammals yet similar to humans, guinea pigs need vitamin C in their diet and rely on getting it from their food sources as their body can’t make it. They require about 25 mg of vitamin C daily, which can be obtained through fresh, raw fruits and vegetables or supplements', 'Bad Vöslau', '2540', 'Rathaus Schloßplatz 1', 'www.adoptapet.com', 'yes', NULL, '0000-00-00'),
(5, 'Lapin', 'lapin.jpg', 'Young', 'Pia writes: According to Cindy, rabbits are fundamentally different from dogs and cats and therefore require an entirely different care-giving approach. We cannot simply apply what we know about cats and dogs to rabbits. \r\n\r\nFor one thing, rabbits are prey animals in nature. That means they are more fragile and fearful than dogs or cats, both natural predators. While they can be held and cuddled, bunnies may respond fearfully at first, perhaps with a sudden movement or harmless nip that could startle a small child and result in the bunny being dropped. For that reason, a rabbit may not be an ideal companion animal for kids under five.', 'Baden', '2500', 'Kaiser-Franz-Ring 1', 'www.savebunny.org', 'yes', NULL, '0000-00-00'),
(6, 'Jimmie Jams', 'koalaj.jpg', 'Young', 'If you\'re looking for trouble, look no further than the one and only Jimmie Jams. Jimmie is an energetic young man who is constantly bugging his mum Ella for a ride on her back. He loves his eucalyptus leaves almost as much as he loves swinging off the scales on weigh day, even when he has already had his turn. Jimmie is always up for a cuddle and loves to meet new people and show off his good looks to the visitors. ', 'Graz', '8020', 'Hans-List-Platz 1', 'www.savethekoala.com', 'no', NULL, '0000-00-00'),
(7, 'Joey', 'poisson1.jpg', 'Young', 'Despite any rumors you may have heard, goldfish are intelligent, sensitive, social animals. They can experience loneliness, boredom, excitement, and fear.', 'Graz', '8020', 'schmiedgasse 26', 'www.peta.org', 'yes', NULL, '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allpets`
--
ALTER TABLE `allpets`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `big`
--
ALTER TABLE `big`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `markers`
--
ALTER TABLE `markers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `young`
--
ALTER TABLE `young`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allpets`
--
ALTER TABLE `allpets`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `big`
--
ALTER TABLE `big`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `markers`
--
ALTER TABLE `markers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `young`
--
ALTER TABLE `young`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
