INSERT INTO "user1" (id_user, username, password, email, bioDescription, birthdate, profilePhoto, points, banned, deleted, id_role) VALUES ();

INSERT INTO "follow"(follower, following) VALUES();

INSERT INTO "role"(id_role, type, beginningDate, endDate) VALUES();

INSERT INTO "notification"(id_notification, description, type, view, "date", id_user) VALUES();

INSERT INTO "category"(id_category, name) VALUES(1, "art");
INSERT INTO "category"(id_category, name) VALUES(2, "biology");
INSERT INTO "category"(id_category, name) VALUES(3, "business");
INSERT INTO "category"(id_category, name) VALUES(4, "chemistry");
INSERT INTO "category"(id_category, name) VALUES(5, "geology");
INSERT INTO "category"(id_category, name) VALUES(6, "history");
INSERT INTO "category"(id_category, name) VALUES(7, "math");
INSERT INTO "category"(id_category, name) VALUES(8, "health");
INSERT INTO "category"(id_category, name) VALUES(9, "linguistics");
INSERT INTO "category"(id_category, name) VALUES(10, "physics");
INSERT INTO "category"(id_category, name) VALUES(11, "psychology");
INSERT INTO "category"(id_category, name) VALUES(12, "technology");




INSERT INTO "question"(id_question, name, title, description, "date", votes, photo, deleted, id_user) VALUES(10, 'linguistics', 'What is the opposite of "gravitas"?', 'I\'m having difficulty coming up with a valid antonym for gravitas.

Online searches return results like superficiality, cheerfulness, frivolity, facetiousness etc. which don\'t work for me. They seem to be opposites of gravitas as it is understood by the person who has it.

As in, "We need to undertake this project with gravitas", "he carried himself with gravitas".

This is taken to mean seriousness.

There\'s another sense of the word, as the quality of a person having gravitas. In this case, the things they say and do are given significance because of gravitas.

What if what someone has to say is automatically disregarded because of... the opposite of gravitas.

What would that word be?', '2017-02-17 09:41:14', 28, NULL, false, 12);


INSERT INTO "question"(id_question, name, title, description, "date", votes, photo, deleted, id_user) VALUES(11, 'chemistry', 'Organic chemistry Iodoform Reaction', 'Why does 2\',6\'dimethyl-acetophenone not give iodofom test?', '2016-12-23 02:11:35', 8, 'BvxPv.jpg', false, 3);


INSERT INTO "question"(id_question, name, title, description, "date", votes, photo, deleted, id_user) VALUES(12, 'technology', 'Is there a good way to store credentials outside of a password manager?', 'A lot of the users in my company are using their agendas to write down their password and usernames, or Excel sheets with a protected password. I\'m hesitant to install software for password management after reading recommendations/feedback on them. 
Is there any other secure and user-friendly solution to store passwords?', '2017-01-10 16:35:44', 10, NULL, false, 7);

INSERT INTO "question"(id_question, name, title, description, "date", votes, photo, deleted, id_user) VALUES(13, 'art', 'What is the term when two people sing in harmony, but they aren\'t singing the same notes?', 'I\'m not a musician, and I know basically nothing about music, and music theory and what-not. (I basically just know a few common terms, and how to play chords)

In most songs with two or more people singing, (Duets specifically) the singers almost always sing in harmony, but not the same notes. What term is used to describe this? I want to be able to learn how to do it, but I don\'t know the specific term to do more research on it.', '2016-08-05 06:51:24', 7, NULL, false, 11);

INSERT INTO "question"(id_question, name, title, description, "date", votes, photo, deleted, id_user) VALUES(14, 'physics', 'In a ball with random thread/strings, how does the density of threads/strings change with radius?', 'A large plastic ball full of holes is given. (So the holes are in a plastic shell.) Straight threads connect these holes randomly, by passing through the interior of the ball/shell.

For a big ball or shell, say a meter in size, with thousands of holes, this makes (1/2 times) thousands of straight threads inside it. (Each hole has the diameter of the thread, so that each hole can only have on string passing through it.)

Now the question: Inside the ball/shell (assumed to be large), is the density of the random threads homogeneous, or does it depend on the radius?', '2017-04-13 08:21:33', 2, NULL, false, 8);

INSERT INTO "question"(id_question, name, title, description, "date", votes, photo, deleted, id_user) VALUES(15, 'biology', 'Where do the protons in the mitochondrial intermembrane space originally come from?', 
'I\'m currently reviewing this concept in cellular respiration. The book which I\'m using is Reece, Minorsky, Campbell\'s Biology and while it does a good job at explaining the process involved in the electron chain transport. I think it lacks of clearing out my doubts concerning initial protons.

Let me explain, the part where I\'m stuck at is, where do originally the protons in the mitochondrial intermembrane space come from?. I understand that there is a proton gradient and the translocation of this protons in the proton pump is key during the electron shuttle process but, how did those initial protons come?. In other words, during the formation of the mitochondria in the cell, have they always been there? or are they part of some bigger molecule and that those protons are detached from them so that there is an initial gradient that triggers the process for the first time?. In other words, how does that initial spark or kick off begins?.

In most animations I\'ve found, the explanations take for granted that the protons are freely moving in the intermembrane space such as here and also here but what do those videos lack is the explanation of how (as mentioned above) do those protons got there in the first place.

I\'d like somebody could help me to clear out this doubt. I feel that as an addition to the answer, I\'d like to know how does the mitochondria forms in the cell?. Since I believe there might be steps involved, I\'d appreciate that the answer could explain those steps so I could easily understand, because as mentioned. I\'m still confused on that part as well.', '2018-02-11 21:02:44', 3, NULL, false, 3);

INSERT INTO "question"(id_question, name, title, description, "date", votes, photo, deleted, id_user) VALUES(16, 'psychology', 'Is there a foveal explanation for the duck-rabbit illusion?', 
'Myself when I look at the duck-rabbit image, I see a duck if focus on the left (i.e. the beak) or a rabbit if I focus on the right (the nose).

Is this how it works for most people, i.e. is the foveal shift what drives the change in interpretation? (I obviously meant to ask if there\'s an empirical study on this.) 
If so, is the duck-rabbit a part of a wider class of illusions that rely on smaller or larger changes in what\'s foveated?', '2017-07-31 07:56:01', 17, 'V2pW9.png', false, 19);

INSERT INTO "question"(id_question, name, title, description, "date", votes, photo, deleted, id_user) VALUES(17, 'math', 'When is A isomorphic to A^3?', 
'This is totally elementary, but I have no idea how to solve it: let A be an abelian group such that A is isomorphic to A^3. is then A isomorphic to A^2? probably no, but how construct a counterexample? 
you can also ask this in other categories as well, for example rings. if you restrict to Boolean rings, the question becomes a topological one which makes you think about fractals: let X be stone space such that X=X+X+X, does it follow that X=X+X (here + means disjoint union)?', 
'2018-01-30 15:08:23', 32, NULL, false, 15);

INSERT INTO "question"(id_question, name, title, description, "date", votes, photo, deleted, id_user) VALUES(18, 'linguistics', 'Naming my characters', 
'I\'m writing a fantasy novel. The story takes place in England (1900\'s) No matter how much I research I\'m unable to move forward in naming my characters. 
For example, when we look at all the characters JK Rowling created, their names are so unique and suit to their personalities.

My question is are there any methods to name my characters? Should the naming be based on the period when the story takes place?
Should I first develop their personalities and then name them accordingly? Please explain.', 
'2018-01-22 17:35:44', 0, NULL, false, 20);

INSERT INTO "question"(id_question, name, title, description, "date", votes, photo, deleted, id_user) VALUES(19, 'business', 'Can somebody explain “leveraged debt investment positions” and “exposures” in this context for me, please?', 
'"The strong bond performance has led to a surge in leveraged debt investment positions that are ultimately funded by the banks\' interbank exposures and WMPs. But nobody really knows how levered these positions are, who has financed them, and by how much," S&P said. "The contagion risks for the financial sector could be high."', 
'2018-02-16 12:47:38', 14, NULL, false, 6);

INSERT INTO "question"(id_question, name, title, description, "date", votes, photo, deleted, id_user) VALUES(20, 'history', 'Why were Madagascar and New Zealand discovered so late?', 
'Considering how exploration over long distances into the unknown has been a part of human nature right at the beginning, it\'s surprising that some fairly large places have been discovered relatively recently. 
The island of Madagascar, for example, is large and very close to Africa, yet it was discovered in 500 AD. Even then, it wasn\'t by nearby Africans, but by faraway Indonesians. 
New Zealand, which was just as tantalizingly close to Australia, was discovered by Polynesian sailors 800 years later.

So why were these large and incredibly close landmasses discovered so late in the history of human existence? 
What was stopping the settlers from getting there a lot earlier, like before the Common Era?', 
'2018-02-04 12:08:41', 5, NULL, false, 14);

INSERT INTO "question"(id_question, name, title, description, "date", votes, photo, deleted, id_user) VALUES(21, 'geology', 'Exoplanets geology', 
'Science fiction sometimes plays with the concept of a planet with different geological structure than earth (for instance traveling through liquid water core in Star Wars) yet such imaginations often lack scientific plausibility.

What is scientifically plausible and what is not then? Are there any serious research (or at least data-justified scientific speculation) about geology of exoplanets and how it differs from earth?', 
'2018-01-26 12:33:09', 8, NULL, false, 20);

INSERT INTO "question"(id_question, name, title, description, "date", votes, photo, deleted, id_user) VALUES(22, 'geology', 'What sets the length scale of stratified rock formations?', 
'Driving through areas of the American Southwest such as Utah and Arizona, you notice stratified rock formations everywhere. The grand canyon is the best known example. 
One striking thing is that the thickness (or height) of individual layers of rock seems to be roughly constant, within an order of magnitude. (Perhaps 20 feet tall? Hard to tell from the road.) 
This is true even for very tall cliffs which have dozens of layers. Does this imply some kind of very long-term periodicity in climate over geologic time scales? 
If so, what is it? If not, why is there a dominant length scale in these features? What sets this scale?', 
'2018-01-22 17:35:44', 4, NULL, false, 15);

INSERT INTO "question"(id_question, name, title, description, "date", votes, photo, deleted, id_user) VALUES(23, 'art', 'How does a camera move freely inside a car in a movie scene?', 
'In Children Of Men, there is an uncut scene wherein a camera moves freely inside a car full of people. It starts with a front shot with the camera in the dashboard position facing back towards the passengers, then the camera moves forward through the front seats and towards the back seat area and turns around to face the windshield.

Movement looked seamless with no visible rigs, and no room for a cameraman inside. So how do they do it?', 
'2017-03-26 01:06:54', 16, NULL, false, 20);

INSERT INTO "question"(id_question, name, title, description, "date", votes, photo, deleted, id_user) VALUES(24, 'technology', 'Electrostatic painting on plastic', 
'I\'m attempting to create an electrostatic painting process for small plastic parts. The material is ABS and is about 4 inches by 6 inches by 1 inch high. I\'m somewhat familiar with electrostatic painting of metal objects, but I am dismissive, perhaps uneducatedly so, of the necessity of the objects to be metallic.

To help the matter, I will be using a painting system that allows the paint droplets to be extremely small -- an airbrush.

I\'m hypothesizing that I can connect the negative side of a high-voltage low-current source to the tip of the airbrush, through which the paint flows, while I connect the positive side of the high-voltage source to the plastic part to be painted and mist the paint over the highly-contoured part as it is attracted to the surface.

Will this work?', 
'2016-11-12 16:50:24', 6, NULL, false, 13);

INSERT INTO "question"(id_question, name, title, description, "date", votes, photo, deleted, id_user) VALUES(25, 'chemistry', 'Why does liquid water form when we exhale on a mirror?', 
'In the descriptions below, I always assume external pressure to be constant at 1 atm, the condition where daily observations are made.

1) When I exhale on a mirror, liquid water forms on the mirror. That\'s condensation. Obviously, the temperature of mirror must be < 100 °C, so water vapor condensing on mirror makes sense. However, in that case why do we have water vapor in our breath when our body temperature is also < 100 °C in the first place?

2) One reason for (1) may be like \'water vapors in air is in equilibrium with liquid water\', so some water vapors can exist although T < 100 °C. If this is correct, based on this reasoning, then why doesn\'t ice exist at T > 0 °C? [p = 1 atm only]

3) If liquid water can evaporate into gas at T < 100 °C, then why doesn\'t ice turn into liquid at T < 0 °C? (I never use the term \'melt\' here, just like evaporate≠boil) (both have hydrogen bonds, intermolecular forces should be the same?)

4) When I exhale on a wall, no water droplets form. Why do water droplets form on mirror but not on wall (just an example)? The mirror must have the same temperature as that of the wall, both of them must have achieved thermal equilibrium with their surroundings a long time ago.', 
'2016-10-05 01:36:42', 13, NULL, false, 9);

INSERT INTO "question"(id_question, name, title, description, "date", votes, photo, deleted, id_user) VALUES(26, 'math', 'Matrix product and eigen values', 
'Is there any relationship between eigenvalues(or spectrum) of graph Laplacian matrix and the eigenvalues of the product of a real symmetric matrix and the Laplacian matrix?

My problem at hand is as follows :

Let A=L*B.

What is the relationship between spectrum (or eigenvalues) of L with the spectrum of A?

L is Laplacian of an undirected graph, hence real symmetric and singular. B is a real symmetric matrix.

I want to show that if I increase the magnitude of eigenvalues of L, the eigenvalues of A will also increase. However, all I could find was a trace inequality relationship, and inequality doesn\'t necessarily lead to any conclusion.', '2018-01-11 14:46:12', 9, NULL, false, 7);

INSERT INTO "question"(id_question, name, title, description, "date", votes, photo, deleted, id_user) VALUES(27, 'health', 'What’s the difference between primary and secondary dysmenorrhea?', NULL, '2017-08-05 04:54:05', 9, NULL, false, 21);

INSERT INTO "question"(id_question, name, title, description, "date", votes, photo, deleted, id_user) VALUES(28, 'physics', 'If sound is a longitudinal wave, why can we hear it if our ears aren\'t aligned with the propagation direction?', 'If sound is a longitudinal wave, why can we hear it if our ears aren\'t aligned with the propagation direction?', '2018-01-30 15:08:23', 5, NULL, false, 16);

INSERT INTO "question"(id_question, name, title, description, "date", votes, photo, deleted, id_user) VALUES(29, 'health', 'What is the possible diagnosis for symptoms including fever, leucopenia and abdominal pain', NULL, '2017-02-24 08:03:14', 2, NULL, false, 21);

INSERT INTO "question"(id_question, name, title, description, "date", votes, photo, deleted, id_user) VALUES(30, 'linguistics', 'How many liberties can one take with syntax and grammar rules when writing poetry?', NULL, '2017-03-10 22:05:47', 12, NULL, false, 15);




INSERT INTO "voteQuestion"(username, id_question) VALUES();

INSERT INTO "answer"(id_answer, "text","date", votes, photo, deleted, id_question, user_post) VALUES(30, 'You could try \'levity\'.

Levity may refer to: a sense of amusement, the opposite of gravitas', '2017-02-17 11:12:24', 76, NULL, false, 10, 20);
INSERT INTO "answer"(id_answer, "text","date", votes, photo, deleted, id_question, user_post) VALUES(31, 'There should be nothing wrong with Frivolity as you pointed out. It actually means lack of seriousness. The word Frivolity, from Latin frivolus. It is synonym to levity. It is directly opposite to word serious.

Frivolity (noun): the quality or state of being frivolous.

Merriam-Webster defines frivolous (adj.) as: lacking in seriousness

"His frequent frivolous behavior in the meeting is a big concern."

There\'s also insouciance: Blithe lack of concern; nonchalance.', '2017-02-17 19:42:32', 24, NULL, false, 10, 5);
INSERT INTO "answer"(id_answer, "text","date", votes, photo, deleted, id_question, user_post) VALUES(32, 'Install a password manager. A good password manager is much, much better than anything you can do by yourself.

They are software created by security professionals, follow strict development rules, and are tested by a lot of people, and attacked by a lot of people. They have better chance of protecting your passwords than anything invented by the average, even the above average user.', '2017-01-10 18:15:42', 23, NULL, false, 12, 3);
INSERT INTO "answer"(id_answer, "text","date", votes, photo, deleted, id_question, user_post) VALUES(33, 'You\'re probably referring to the recent articles about flaws in password managers.

"Password managers have a security flaw. But you should still use one." (Washington Post)
"Password managers leaking data in memory, but you should still use one." (Sophos)

It\'s right there in the titles, password managers have flaws and you should still use one because they\'re more secure than what many folks do, like keeping passwords in Excel, emailing them around, pasting them into chat where they\'ll be logged by everyone...

All software has flaws. Password managers, and security software in general, is held to a higher standard than run-of-the-mill software. The flaws these articles are talking about in password managers are not rookie mistakes, but risk trade-offs.

1Password has a write up about the latest flaw. It\'s not a mistake as it is a consequence of a trade-off to avoid other worse memory bugs. The important bit is that your computer must already be compromised and you have recently typed in your master password. If your computer is already compromised, keeping your passwords in an Excel spreadsheet offers you no protection.

Password managers can do other things to add to your security:

Share and manage your passwords between all your devices, including mobile devices;
Share and manage passwords and credentials with co-workers;
Store more than just passwords securely: GPG and SSH keys and passphrases, one-time password generators, recovery keys, security questions, API keys, notes;
Inform you of insecure passwords (such as reused passwords or password breaches);
Generate secure passwords;
Auto-fill passwords (avoids being shoulder surfed);
Auto-record new accounts.

These avoid bad practices such as reusing passwords, using weak passwords, sharing them via email or chat or a shared document, writing them down (whether on paper or a file), and continuing to use breached passwords.', '2017-01-13 09:22:19', 11, NULL, false, 12, 24);
INSERT INTO "answer"(id_answer, "text","date", votes, photo, deleted, id_question, user_post) VALUES(34, 'The term "harmony" itself is what you are looking for. Being able to sing in harmony (2 or more different voices) with someone however doesn\'t require any more skills or theory than singing alone or in unison (same notes, only one voice) because everyone learns "his notes" as he would do singing alone. The only thing I could think of is having a good ear, maybe good relative pitch, but that is required for soloists singers too.

The hard part is composing or improvising the harmony and that requires a lot of different music theory skills, not only the harmony part. If this is what you are looking for, I would suggest to start with generic music theory or if you are really serious about it, take piano lessons.', '2016-08-05 13:15:24', 17, NULL, false, 13, 18);
INSERT INTO "answer"(id_answer, "text","date", votes, photo, deleted, id_question, user_post) VALUES(35, 'I believe the density is homogeneous throughout the ball.

I did a numerical simulation of this in Mathematica. I assumed the sphere had radius 1 and generated 100,000 pairs of random points on it, each pair to be connected with string. 
Then I analyzed this set of random strings to see how much total mass (i.e., length of string) lay between r and r+dr in various spherical shells with radii (0.1, 0.2, …, 0.9), using a bit of geometry. 
Then I divided by the radius of the spherical shell to get the volume density and plotted it. The 9 points lay almost on a horizontal line (check the image below).
The horizonal axis is the radial coordinate and the vertical axis is the mass density.', '2017-04-16 07:11:32', 3, '4zNaV.png', false, 14, 16);
INSERT INTO "answer"(id_answer, "text","date", votes, photo, deleted, id_question, user_post) VALUES(36, 'Awesome - even though I expected something different, namely a decrease with radius.', '2017-04-17 15:24:12', 1, NULL, false, 14, 8);
INSERT INTO "answer"(id_answer, "text","date", votes, photo, deleted, id_question, user_post) VALUES(37, 'Short answer
Ambiguous figures do not necessarily depend on focus, they do depend on attention though.

Background
The figure you provide is huge. From a standard face-to-monitor distance of a meter or so, one indeed needs to scan the image. Under these conditions I agree with you, in that the perceived animal changes when you change focus. 
The ears become a bill when you focus on that part and you see a duck. Reversely, when you focus on the head, you see a bunny.

However, try to zoom out. If it is still too big take some more distance from your monitor and look at the center. 
You\'ll notice it will freely flip-flop between critters, also without shifting your gaze. I found another version depicted in the image below. 
That, in my case, even more smoothly transitions from duck to rabbit and vice versa. Hence, foveal focus is not key.

Ambiguous images are not truly illusions; Many illusions rely on unconscious inferences in perception, while ambiguous figures illustrate the role of expectations, world-knowledge, and the direction of attention. For example, children tested on Easter Sunday are more likely to see the figure as a rabbit; if tested on a Sunday in October, they tend to see it as a duck or similar bird (source: Kihlstrom, University of California, Berkeley, see references there). 
Hence, by shifting your attention from one part to another, you may indeed evoke a flip flop and although this i medited by visual input and hence needs the retina, it nonetheless is a process induced by shifting your attention and hence a top-down process. 
Your suggestion of a foveal dependence would imply a bottom-up effect. It is not.', 2, 'QyICx.jpg', false, 16, 10);
INSERT INTO "answer"(id_answer, "text","date", votes, photo, deleted, id_question, user_post) VALUES(38, 'The answer to the first question is no. That is, there exists an abelian group A isomorphic to A^3 but not A^2. 
This result is due to A.L.S. (Tony) Corner, and is the case r=2 of the theorem described in the following Mathematical Review.

It is shown that for any positive integer r there exists a countable torsion-free abelian group G such that the direct sum of m copies of G is isomorphic to the direct sum of n copies of G if and only if m≡n(modr). 
This remarkable result is obtained from the author\'s theorem on the existence of torsion-free groups having a prescribed countable, reduced, torsion-free endomorphism ring by constructing a ring with suitable properties. 
It should be mentioned that the question of the existence of algebraic systems with the property stated above has been considered by several mathematicians. 
The author has been too generous in crediting this "conjecture" to the reviewer.', 83, NULL, false, 17, 13);
INSERT INTO "answer"(id_answer, "text","date", votes, photo, deleted, id_question, user_post) VALUES(39, 'You should write your story first, using any names that come to mind. The important thing is writing and completing a draft of your story to determine as quickly as you can if the story is something you are invested in.


Getting stuck on these types of details are a distraction to the work at hand (writing) and I encourage you to ignore these types of things as much as possible. It is a normal part of how the brain works to distract a person from the writing because there are often other subconscious things at play.
This is a part of the normal creative process of the tug of war that occurs between the creative side and the critic and it is important later, but for now should be put off.


The best thing about fantasy is that it\'s totally open. After you write your story, you can make up names that have subtle meanings or are related to other things or are entirely made up based on an entire mythology that you create.

As Alexander Graham Bell once said, "There are no rules here! We are trying to accomplish something."

And don\'t forget: character names often emerge as you write: for now, just use any name that comes to you quickly and later as you get a sense of who the character is you will probably find that the character\'s name will emerge from that anyways.', '2018-01-23 07:21:19', 5, NULL, false, 18, 22);
INSERT INTO "answer"(id_answer, "text","date", votes, photo, deleted, id_question, user_post) VALUES(40, 'Exposure is the amount of money that you are at risk of losing on a given position (i.e. on a UST 10 year bond), portfolio of positions, strategy (selling covered calls for example), or counterparty, usually represented as a percentage of your total assets.

Interbank exposure is the exposure of banks to other banks either through owning debt or stock, or by having open positions with the other banks as counterparties.

Leveraging occurs when the value of your position is more than the value of what you are trading in. One example of this is borrowing money (i.e. creating debt for yourself) to buy bonds. The amount of your own funds that you are using to pay for the position is "leveraged" by the debt so that you are risking more than 100% of your capital if, for example, the bond became worthless). Another example would be buying futures "on margin" where you only put up the margin value of the trade and not the full cost.

The problem with these leveraged positions is what happens if a credit event (default etc.) happens. Since a large amount of the leverage is being "passed on" as banks are issuing debt to buy other banks\' debt who are issuing debt to buy debt there is a risk that a single failure could cause an unravelling of these leveraged positions and, since the prices of the bonds will be falling resulting in these leveraged positions losing money, it will cause a cascade of losses and defaults. 

If a leveraged position becomes worth less than the amount of real (rather than borrowed or margined) money that was put up to take the position then it is almost inevitable that the firm in that position will default on the requirements for the leverage. When that firm defaults it sparks all of the firms who own that debt to go through the same problems that it did, hence the contagion.', '2018-02-17 13:27:31', 1, NULL, false, 19, 23);
INSERT INTO "answer"(id_answer, "text","date", votes, photo, deleted, id_question, user_post) VALUES(41, 'By and large new uninhabited landmasses were discovered in one of three ways:

1. By hunter-gatherers, walking there when the sea level was much lower at the end of the last glaciation.
2. By hunter-gatherers hopping there from nearby islands or landmasses using their small coastal craft.
3. By farming people with ocean-going vessels (usually Austronesians).

So let\'s look at #1. At the time, while Australia wasn\'t connected yet to Eurasia, it was pretty close. There also were all sorts of convenient island chains in between the two.

Also notice that the distance between Madagascar and Mozambique is almost unchanged, as is the distance from Australia to New Zealand, and those distances are far greater.

The navigation techniques employed by hunter-gatherers are generally not designed to work far out of sight of land. A boat that is good for coastal fishing and/or transport is a far cry from something one could entrust their life to in the open ocean. 
Ocean navigation itself requires a whole suite of specialized techniques (including math) that really can\'t be developed in societies lacking the stratification and specialization afforded to farming societies.

So given that the distance to the horizon is about 5KM (3 miles), in the absence of convenient mountains, any body more that about 10KM from the coast is going to take some luck to bump into. The further off, the more luck needed.

Madagascar is 419km across the Mozambique channel at its closest point. Even if Mount Everest happened to be on the other side of that channel, it would not be visible to a sailor within sight of the African side.

New Zealand is ten times that distance from Australia. There\'s pretty much no way a breeding colony of humans is going to just randomly bump into that.

So this means both landmasses were in wait of a farming society to discover them. Enter the Polynesians. They had a agricultural package of domesticated crops and livestock that allowed for job specialization, and used it to create a specialized class/guild of navigators in their society. These folks developed and passed on the open-ocean sailing techniques that allowed their society to discover and populate a third of the globe.

Of course discoveries of nearby islands brought the opportunity for more discoveries, so this process took some time to finish populating the entire Pacific. So New Zealand wasn\'t hit upon until about the 13th Century.

Native Australians of course were closer (but still not close!). However, being hunter-gatherers, they simply did not have the means to bridge that gap.

Now, how about Madagascar, you might ask? After all, there were farmers in Africa pretty much as early as there were farmers anywhere on earth! Shouldn\'t it have been discovered earlier by African farmers, and not had to wait for Austronesians to find it?

The problem there was the initial farming package in North Africa was temperate climate crops. These don\'t grow very well south of the Sahara. A different tropical crop package was developed there, relying on millet and sorghum. This didn\'t happen until about 2000 BC directly south of the Sahara in West Africa, and it took a large amount of time for these farmers to displace the hunter gatherers in their march across the continent, and then south. 
They didn\'t reach Mozambique until 1-2,000 years ago, and by then the Austronesians were either already living in Madagascar, or nearly there.', '2018-02-04 18:08:48', 43, 'Ht5r3.png', false, 20, 11);

INSERT INTO "answer"(id_answer, "text","date", votes, photo, deleted, id_question, user_post) VALUES(42, 'Some of the main features to consider when you want to think about the geology (not the best word here) of a planet are:

1. Does it have a gyro, like a molten core of nickel=iron. This creates poles (magnetism) and with imagination that can lead to lots of creative possibilities.
2. Is there water?
3. Is there an atmosphere, and what kind?
4. What is the temperature? (This overlaps the above two, and is also affected by proximity to its star.)
5. Are there moons. This impacts tides.
6. Is it a gas giant? A liquid planet is possible. Some of our gas giants are essentially liquid. It sounds like this is what you are reaching for.

As far as elemental makeup, I would be surprised if we found areas of space with wildly different compositions. "We are all stardust" is an expression based on the idea that the elements in our solar system were formed in stars, and so the smallest elements are most abundant. This should hold elsewhere.

Once you\'ve considered those 6 ideas, you can start to generate a lot of different combinations.

There is some hard science to help you out: there is quite a lot of research to back up what we know about planets and exoplanets including the bodies in our solar system.
Try to look into papers regarding geology of exoplanets. You will find more articles than you can shake a stick at.

With (considerably) more specificity in your question, an equation or two in this answer could make sense. Just ping me if that\'s what you are actually looking for! (I believe what you are asking is \'how crazy of a planet can exist, and be scientifically valid,\' not \'how do I use equations to derive the probability of a liquid planet, or some such.\') You might also want to consider moons. They are becoming more and more en vogue in planetary science.', '2018-01-27 20:13:44', 2, NULL, false, 21, 11);
INSERT INTO "answer"(id_answer, "text","date", votes, photo, deleted, id_question, user_post) VALUES();
INSERT INTO "answer"(id_answer, "text","date", votes, photo, deleted, id_question, user_post) VALUES();
INSERT INTO "answer"(id_answer, "text","date", votes, photo, deleted, id_question, user_post) VALUES();
INSERT INTO "answer"(id_answer, "text","date", votes, photo, deleted, id_question, user_post) VALUES();
INSERT INTO "answer"(id_answer, "text","date", votes, photo, deleted, id_question, user_post) VALUES();
INSERT INTO "answer"(id_answer, "text","date", votes, photo, deleted, id_question, user_post) VALUES();
INSERT INTO "answer"(id_answer, "text","date", votes, photo, deleted, id_question, user_post) VALUES(100, 'The answer, like most things in writing, is that it depends.

In my own poetry writing I\'ve found that I am greatly helped by first learning and strictly following all stylistic guidelines. I have often been drawn towards formal verse structures such as the villanelle, Shakespearian-style sonnet, or sestina. By forcing myself to follow these guidelines, I really challenge my own creative process. I also learn what the rules do to the poem. I learn the impact of, say, repeating the same line at the end of every other stanza or how a certain rhythm and rhyme scheme hits the ear.

The really famous uses of all of these formal structures for poetry usually, although not always, end up breaking the rules or at least bending them. The key is that there is a structure to be twisted, and in knowing what the impact of that structure is and how twisting it in certain ways has certain impacts. For example if the poem is in iambic pentameter and there is an additional syllable on the line to make it longer or the stress falls on two syllables back to back, the reader will notice that line or those syllables more than other parts of the poem which might be comfortable.

One way of breaking the rules that novice poets often fall into and shouldn\'t is using antiquated language or awkward language constructs because "that\'s the way poetry is written." Actually, it is not. A poem by John Donne reads the way that it does because John Donne was writing somewhat in the vernacular of his time but also in a time before the English language was as standardized as it is now. The modern poetry-reading public does not tend to have a high tolerance for poetic license with grammatical constructs unless it really has a great, positive impact on your poem. You can\'t just re-structure sentences to fit a rhyme scheme and call it good poetry - you have to fit the rhyme scheme in a way that serves the grammar of your sentence, too.

The most revered modern poets often (not always) write very compressed language that also seems modern and moves smoothly. When they break these patterns, the impact adds to the theme and feel of the poem, it is not capricious. As a poet you\'ll have to learn how to do this as well.', '2017-03-11 11:11:12', 8, NULL, false, 30, 5);
INSERT INTO "answer"(id_answer, "text","date", votes, photo, deleted, id_question, user_post) VALUES();


INSERT INTO "voteAnswer"(username, id_answer) VALUES();

INSERT INTO "comment"(firstAnswer, secondAnswer) VALUES(1, 35, 36);

INSERT INTO "bestAnswer"(id_bestAnswer, attributionDate, "text", "date", deleted, active, votes, photo) VALUES();

INSERT INTO "faq"(id_faq, question, answer) VALUES(1, 'How does LearnIt work?', 'LearnIt is a Q&A community with an academic setting. Users can ask their own questions and answer questions posted by other people, as well as cast votes on posts in order to verify the quality of the information. You can vote a post positively or negatively, and the question owner can choose one of the answers as the best one. <br>
              Each question can be set to one of 12 distinct categories: Art, Biology, Business, Chemistry, Geology, History, Linguistics, Math, Medicine, Physics, Psychology and Technology; whose hubs can be freely browsed. <br>
              There is a permanent search bar on top of most pages with a wide variety of search options to find previously asked questions faster. <br>
              There are also achievements that an user can win. Try to collect them all and become the ultimate Learner!');
			  
INSERT INTO "faq"(id_faq, question, answer) VALUES(2, 'What does my rank mean?', 'Each user has an assigned rank, based on their number of points. As you ask or answer questions, and taking into account how other users rate your questions and answers, you can gain or lose points. <br>
              Asking or answering a question will give you 1 point. Each positive vote on any of your posts (questions and answers) will also give you 1 point, and each negative vote will take away 1 point. If your answer to a question is voted by the enquirer as the best answer, you will gain 5 points. <br>
          
              Here is a list of all ranks and their thresholds: <br>
              <br>
              Rookie - 0 points <br>
              Beginner - 30 points <br>
              Intermediate - 100 points <br>
              Enthusiast - 250 points <br>
              Advanced - 500 points <br>
              Veteran - 1000 points <br>');
			  
INSERT INTO "faq"(id_faq, question, answer) VALUES(3, 'What is a trusted user?', 'A trusted user is a user who has greatly contributed to the platform, often posting the best answers and therefore a reliable source of information and knowledge. <br>
              In order to become a trusted user, at least 90% of your answers must be upvoted and more than 70% need to be classified as best answer. <br>');			  

INSERT INTO "faq"(id_faq, question, answer) VALUES(4, 'How can I become a moderator?', 'In order for an user to become a moderator, they must be approved by the site administrator, who can also demote a moderator to a regular user. <br>
              Moderators can manage general aspects of the sites, such as users, questions and answers, as well as review reported content. <br>');			  

INSERT INTO "faq"(id_faq, question, answer) VALUES(5, 'What happens if I get banned or if I delete my account?', 'If a user often posts inappropriate content, moderators and administrators have the ability to ban them. If this happens, said user will no longer be able to log in, rendering the account useless. <br>
              Contrarily, if a user decides to delete their account, their profiles will be deleted but their questions and answers will remain. If you wish to delete any of your posts, do so before deleting your account as you will not be able to log in afterwards. <br>');			  

INSERT INTO "faq"(id_faq, question, answer) VALUES(6, 'Where do I suggest features I would like to see on LearnIt?', 'Simply contact us, using the contact form on the bottom part of any of the pages on the site.  <br>
              User feedback is always appreciated, and will help us to build a stronger platform for our community.');

INSERT INTO "report"(id_report, "date", reason, id_question, id_answer) VALUES();

INSERT INTO "userReport"(username, id_report) VALUES();
