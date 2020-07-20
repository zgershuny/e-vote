-- ---------------------------------------------------------------------------------------------------------
-- PAGE 2-5 OF THE WEBSITE DESIGN PDF
-- ---------------------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------------------
-- Search By Location: CITY ONLY
-- ---------------------------------------------------------------------------------------------------------

SELECT Elections.electionID, Elections.date, Elections.electionName, Occurrences.occurrenceName
FROM Elections
	JOIN Occurrences ON Elections.occurrenceID = Occurrences.occurrenceID
	JOIN Pools ON Elections.electionID = Pools.electionID
	JOIN Candidates ON Pools.candidateID = Candidates.candidateID
	JOIN Affiliations ON Candidates.candidateID = Affiliations.candidateID
	JOIN Cities ON Affiliations.cityID = Cities.cityID
WHERE Cities.cityName=:input_cityName;

-- ---------------------------------------------------------------------------------------------------------
-- Search By Location: STATE ONLY
-- ---------------------------------------------------------------------------------------------------------

SELECT Elections.electionID, Elections.date, Elections.electionName, Occurrences.occurrenceName
FROM Elections
	JOIN Occurrences ON Elections.occurrenceID = Occurrences.occurrenceID
	JOIN Pools ON Elections.electionID = Pools.electionID
	JOIN Candidates ON Pools.candidateID = Candidates.candidateID
	JOIN Affiliations ON Candidates.candidateID = Affiliations.candidateID
	JOIN Cities ON Affiliations.cityID = Cities.cityID
	JOIN States ON Cities.stateID = States.stateID
WHERE States.stateName=:input_stateName;

-- ---------------------------------------------------------------------------------------------------------
-- Search By Location: DATE ONLY
-- ---------------------------------------------------------------------------------------------------------

SELECT Elections.electionID, Elections.date, Elections.electionName, Occurrences.occurrenceName
FROM Elections
	JOIN Occurrences ON Elections.occurrenceID = Occurrences.occurrenceID
WHERE Elections.date=:input_date;

-- ---------------------------------------------------------------------------------------------------------
-- Search By Location: CITY AND STATE ONLY
-- ---------------------------------------------------------------------------------------------------------

SELECT Elections.electionID, Elections.date, Elections.electionName, Occurrences.occurrenceName
FROM Elections
	JOIN Occurrences ON Elections.occurrenceID = Occurrences.occurrenceID
	JOIN Pools ON Elections.electionID = Pools.electionID
	JOIN Candidates ON Pools.candidateID = Candidates.candidateID
	JOIN Affiliations ON Candidates.candidateID = Affiliations.candidateID
	JOIN Cities ON Affiliations.cityID = Cities.cityID
	JOIN States ON Cities.stateID = States.stateID
WHERE Cities.cityName=:input_cityName AND States.stateName=:input_stateName;

-- ---------------------------------------------------------------------------------------------------------
-- Search By Location: CITY AND DATE ONLY
-- ---------------------------------------------------------------------------------------------------------

SELECT Elections.electionID, Elections.date, Elections.electionName, Occurrences.occurrenceName
FROM Elections
	JOIN Occurrences ON Elections.occurrenceID = Occurrences.occurrenceID
	JOIN Pools ON Elections.electionID = Pools.electionID
	JOIN Candidates ON Pools.candidateID = Candidates.candidateID
	JOIN Affiliations ON Candidates.candidateID = Affiliations.candidateID
	JOIN Cities ON Affiliations.cityID = Cities.cityID
WHERE Cities.cityName=:input_cityName AND Elections.date=:input_date;

-- ---------------------------------------------------------------------------------------------------------
-- Search By Location: STATE AND DATE ONLY
-- ---------------------------------------------------------------------------------------------------------

SELECT Elections.electionID, Elections.date, Elections.electionName, Occurrences.occurrenceName
FROM Elections
	JOIN Occurrences ON Elections.occurrenceID = Occurrences.occurrenceID
	JOIN Pools ON Elections.electionID = Pools.electionID
	JOIN Candidates ON Pools.candidateID = Candidates.candidateID
	JOIN Affiliations ON Candidates.candidateID = Affiliations.candidateID
	JOIN Cities ON Affiliations.cityID = Cities.cityID
	JOIN States ON Cities.stateID = States.stateID
WHERE States.stateName=:input_stateName AND Elections.date=:input_date;

-- ---------------------------------------------------------------------------------------------------------
-- Search By Location: CITY, STATE, AND DATE
-- ---------------------------------------------------------------------------------------------------------

SELECT Elections.electionID, Elections.date, Elections.electionName, Occurrences.occurrenceName
FROM Elections
	JOIN Occurrences ON Elections.occurrenceID = Occurrences.occurrenceID
	JOIN Pools ON Elections.electionID = Pools.electionID
	JOIN Candidates ON Pools.candidateID = Candidates.candidateID
	JOIN Affiliations ON Candidates.candidateID = Affiliations.candidateID
	JOIN Cities ON Affiliations.cityID = Cities.cityID
	JOIN States ON Cities.stateID = States.stateID
WHERE States.stateName=:input_stateName AND Elections.date=:input_date;

-- ---------------------------------------------------------------------------------------------------------
-- Search By Candidate: First Name ONLY
-- ---------------------------------------------------------------------------------------------------------

SELECT Elections.electionID, Elections.date, Elections.electionName, Occurrences.occurrenceName
FROM Elections
	JOIN Occurrences ON Elections.occurrenceID = Occurrences.occurrenceID
	JOIN Pools ON Elections.electionID = Pools.electionID
	JOIN Candidates ON Pools.candidateID = Candidates.candidateID
WHERE Candidates.c_fName=:input_c_fName;

-- ---------------------------------------------------------------------------------------------------------
-- Search By Candidate: Last Name ONLY
-- ---------------------------------------------------------------------------------------------------------

SELECT Elections.electionID, Elections.date, Elections.electionName, Occurrences.occurrenceName
FROM Elections
	JOIN Occurrences ON Elections.occurrenceID = Occurrences.occurrenceID
	JOIN Pools ON Elections.electionID = Pools.electionID
	JOIN Candidates ON Pools.candidateID = Candidates.candidateID
WHERE Candidates.c_lName=:input_c_lName;

-- ---------------------------------------------------------------------------------------------------------
-- Search By Candidate: Date ONLY
-- ---------------------------------------------------------------------------------------------------------

SELECT Elections.electionID, Elections.date, Elections.electionName, Occurrences.occurrenceName
FROM Elections
	JOIN Occurrences ON Elections.occurrenceID = Occurrences.occurrenceID
WHERE Elections.date=:input_date;

-- ---------------------------------------------------------------------------------------------------------
-- Search By Candidate: First AND Last Name ONLY
-- ---------------------------------------------------------------------------------------------------------

SELECT Elections.electionID, Elections.date, Elections.electionName, Occurrences.occurrenceName
FROM Elections
	JOIN Occurrences ON Elections.occurrenceID = Occurrences.occurrenceID
	JOIN Pools ON Elections.electionID = Pools.electionID
	JOIN Candidates ON Pools.candidateID = Candidates.candidateID
WHERE Candidates.c_fName=:input_c_fName AND Candidates.c_lName=:input_c_lName;

-- ---------------------------------------------------------------------------------------------------------
-- Search By Candidate: First Name AND Date ONLY
-- ---------------------------------------------------------------------------------------------------------

SELECT Elections.electionID, Elections.date, Elections.electionName, Occurrences.occurrenceName
FROM Elections
	JOIN Occurrences ON Elections.occurrenceID = Occurrences.occurrenceID
	JOIN Pools ON Elections.electionID = Pools.electionID
	JOIN Candidates ON Pools.candidateID = Candidates.candidateID
WHERE Candidates.c_fName=:input_c_fName AND Elections.date=:input_date;

-- ---------------------------------------------------------------------------------------------------------
-- Search By Candidate: Last Name and Date ONLY
-- ---------------------------------------------------------------------------------------------------------

SELECT Elections.electionID, Elections.date, Elections.electionName, Occurrences.occurrenceName
FROM Elections
	JOIN Occurrences ON Elections.occurrenceID = Occurrences.occurrenceID
	JOIN Pools ON Elections.electionID = Pools.electionID
	JOIN Candidates ON Pools.candidateID = Candidates.candidateID
WHERE Candidates.c_lName=:input_c_lName AND Elections.date=:input_date;

-- ---------------------------------------------------------------------------------------------------------
-- Search By Candidate: First and Last Name and Date ONLY
-- ---------------------------------------------------------------------------------------------------------

SELECT Elections.electionID, Elections.date, Elections.electionName, Occurrences.occurrenceName
FROM Elections
	JOIN Occurrences ON Elections.occurrenceID = Occurrences.occurrenceID
	JOIN Pools ON Elections.electionID = Pools.electionID
	JOIN Candidates ON Pools.candidateID = Candidates.candidateID
WHERE Candidates.c_fName=:input_c_fName AND Candidates.c_lName=:input_c_lName AND Elections.date=:input_date;

-- ---------------------------------------------------------------------------------------------------------
-- Search By Elections -- COMEBACK TO IT
-- ---------------------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------------------
-- PAGE 6 OF THE WEBSITE DESIGN PDF
-- ---------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------
-- DISPLAY Election Results specific to that election 
-- NEED to implement COUNT() to count the number of votes - the function would need to make a new column 
-- to store the tally the number of votes
-- NEED to implement to calculate the percentage of the votes won - the function would need to make a new
-- column to store the percentage
-- ---------------------------------------------------------------------------------------------------------

SELECT Elections.electionID, 
CONCAT(Candidates.c_fName, ' ', Candidates.c_lName) AS 'c_fullName', 
Parties.partyName
FROM Elections
	JOIN Occurrences ON Elections.occurrenceID = Occurrences.occurrenceID
	JOIN Pools ON Elections.electionID = Pools.electionID
	JOIN Candidates ON Pools.candidateID = Candidates.candidateID
	JOIN Affiliations ON Candidates.candidateID = Affiliations.candidateID
	JOIN Parties ON Affiliations.partyID=Parties.partyID
WHERE Elections.electionID=:input_electionID;

-- ---------------------------------------------------------------------------------------------------------
-- PAGE 7 OF THE WEBSITE DESIGN PDF
-- ---------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------
-- CREATE a New Voter - also implement a SSN validation that it does not exist in the Voters table
-- 3 Steps Insertation Process: 
-- 1) Insert the Voter's info then input that
-- 2) call LAST_INSERT_ID() 
-- function to connect the the voterID FK in Affiliations to the PK in Voters and 
-- 3) INSERT into Affiliations
-- Cities (and States by established relationship), Genders, Parties, and Sexes are already selected in the 
-- dynamic dropdown menu
-- SSN is UNIQUE KEY so if it matches in the database table, it will reject the entry
-- ---------------------------------------------------------------------------------------------------------

INSERT INTO Voters(ssn, v_fName, v_lName, birthDate, streetNumber, addressName, aptNum, zipcode, phoneNumber, cellNumber, emailAddress)
VALUES(:input_ssn, :input_v_fName, :input_v_lName, :input_birthDate, :input_streetNumber, :input_addressName, :input_aptNum, :input_zipcode, :input_phoneNumber, :input_cellNumber, :input_emailAddress);

SELECT LAST_INSERT_ID();

INSERT INTO Affiliations(voterID, cityID, partyID, sexID, genderID) VALUES (LAST_INSERT_ID(), :input_cityID, :input_partyID, :input_sexID, :input_genderID);

-- ---------------------------------------------------------------------------------------------------------
-- Dynamic Dropdown Menu for Parties
-- ---------------------------------------------------------------------------------------------------------

SELECT Parties.partyName, Parties.partyID
FROM Parties
ORDER BY partyName ASC;

-- ---------------------------------------------------------------------------------------------------------
-- Dynamic Dropdown Menu for Genders
-- ---------------------------------------------------------------------------------------------------------

SELECT Genders.genderName, Genders.genderID
FROM Genders
ORDER BY genderName ASC;

-- ---------------------------------------------------------------------------------------------------------
-- Dynamic Dropdown Menu for Sexs
-- ---------------------------------------------------------------------------------------------------------

SELECT Sexs.sexName, Sexs.sexID
FROM Sexs
ORDER BY sexName ASC;

-- ---------------------------------------------------------------------------------------------------------
-- Dynamic Dropdown Menu for City, State
-- IDEALLY - 2 Step Process: Select State First to Narrow down the options for Cities, will have to 
-- test as implemented
-- ---------------------------------------------------------------------------------------------------------

SELECT States.stateName, States.stateID
FROM States
ORDER BY stateName ASC;

SELECT Cities.cityName, Cities.cityID
FROM Cities
WHERE stateID=:input_stateID
ORDER BY cityName ASC;

-- ---------------------------------------------------------------------------------------------------------
-- PAGE 8 OF THE WEBSITE DESIGN PDF
-- ---------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------
-- CREATE a New Candidate - also implement a SSN validation that it does not exist in the Candidates table
-- 1) SELECT info to render the information (the user will not be updating the info)
-- 2) INSERT the values into the candidates table
-- 3) SELECT the new candidateID that was just created so that info can be entered into Affiliations table
-- and be connected to the Candidates table
-- SSN is UNIQUE KEY so if it matches in the database Candidates table, it will reject the entry
-- Incumbent is always false when creating a new candidate, so it will be 0
-- City (and State by established relationship), Party, Sex, and Gender will be inputted based on the 
-- candidate's voter information on the already rendered form
-- ---------------------------------------------------------------------------------------------------------

SELECT Voters.*, Parties.partyName, Cities.cityName, States.stateName, Genders.genderName, Sexs.sexName 
FROM Voters
	JOIN Affiliations ON Voters.voterID=Affiliations.voterID
	JOIN Cities ON Affiliations.cityID=Cities.cityID
	JOIN States ON Cities.stateID=States.stateID
	JOIN Genders ON Affiliations.genderID=Genders.genderID
	JOIN Sexs ON Affiliations.sexID=Sexs.sexID
	JOIN Parties ON Affiliations.partyID=Parties.partyID
WHERE Voters.voterID=:input_voterID;

INSERT INTO Candidates(ssn, c_fName, c_lName, birthDate, incumbent)
VALUES(:input_ssn, :input_c_fName, :input_c_lName, :input_birthDate, 0);

SELECT LAST_INSERT_ID();

INSERT INTO Affiliations(candidateID, cityID, partyID, sexID, genderID) VALUES (LAST_INSERT_ID(), :input_cityID, :input_partyID, :input_sexID, :input_genderID);


-- ---------------------------------------------------------------------------------------------------------
-- PAGE 9 OF THE WEBSITE DESIGN PDF
-- ---------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------
-- WILL NEED TO DO RESEARCH ON LOGIN USERNAME/PASSWORD - maybe SALT/HASH?
-- Questions to think:
-- 1) Should admins have their own table, and if so, where does it fit in the schema?
-- 2) Should usernames be voters' email addresses?
-- https://crackstation.net/hashing-security.htm
-- https://ciphertrick.com/salt-hash-passwords-using-nodejs-crypto/
-- ---------------------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------------------
-- PAGE 10 and 11 OF THE WEBSITE DESIGN PDF (Both Users and Admins)
-- ---------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------
-- DISPLAY all upcoming elections in the user's area that is today or in the future via CURDATE()
-- ERROR: No results displaying: 
-- Need to figure a way to group all candidates in one query, or maybe this would have to be two queries?
-- ---------------------------------------------------------------------------------------------------------
SELECT Elections.date, Elections.electionName, Occurrences.occurrenceName, Candidates.candidateID
FROM Elections
	JOIN Occurrences ON Elections.occurrenceID=Occurrences.occurrenceID
	JOIN Pools ON Elections.electionID=Pools.electionID
	JOIN Candidates ON Pools.candidateID=Candidates.candidateID
	JOIN Affiliations ON Candidates.candidateID=Affiliations.candidateID
	JOIN Voters ON Affiliations.voterID=Voters.voterID
	JOIN Cities ON Affiliations.cityID=Cities.cityID
WHERE Voters.voterID=:input_voterID AND Affiliations.cityID=:input_cityID AND Elections.date >= CURDATE();

-- ---------------------------------------------------------------------------------------------------------
-- PAGE 11 OF THE WEBSITE DESIGN PDF (For ADMINS Only)
-- ---------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------
-- INSERT - ADD a new Election
-- How to include city and state if they may not have a pool associated yet?
-- Would this require a schema change - a new FK to Cities? Or to Affiliations?
-- ---------------------------------------------------------------------------------------------------------

INSERT INTO Elections(electionName, officeID, occurrenceID, date)
VALUES(:input_electionName, :input_officeID, :input_occurenceID, :input_date)

-- ---------------------------------------------------------------------------------------------------------
-- Dynamic Dropdown Menu for Name
-- ---------------------------------------------------------------------------------------------------------

SELECT Occurences.occurrenceName, Occurences.occurrenceID
FROM Occurences
ORDER BY occurrenceName ASC;

-- ---------------------------------------------------------------------------------------------------------
-- Dynamic Dropdown Menu for Name
-- ---------------------------------------------------------------------------------------------------------

SELECT Branches.branchName, Branches.branchID
FROM Branches
ORDER BY branchName ASC;

-- ---------------------------------------------------------------------------------------------------------
-- Dynamic Dropdown Menu for Name
-- ---------------------------------------------------------------------------------------------------------

SELECT Levels.levelName, Levels.levelID
FROM Levels
ORDER BY levelName;

-- ---------------------------------------------------------------------------------------------------------
-- Dynamic Dropdown Menu for City, State
-- IDEALLY - 2 Step Process: Select State First to Narrow down the options for Cities, will have to 
-- test as implemented
-- ---------------------------------------------------------------------------------------------------------

SELECT States.stateName, States.stateID
FROM States
ORDER BY stateName ASC;

SELECT Cities.cityName, Cities.cityID
FROM Cities
WHERE stateID=:input_stateID
ORDER BY cityName ASC;

-- ---------------------------------------------------------------------------------------------------------
-- Dynamic Dropdown Menu for Office
-- ---------------------------------------------------------------------------------------------------------

SELECT Offices.officeName, Offices.officeID
FROM Offices
ORDER BY officeName;

-- ---------------------------------------------------------------------------------------------------------
-- INSERT - ADD a new Office Name WITH District ID
-- ---------------------------------------------------------------------------------------------------------

INSERT INTO Offices(levelID, branchID, officeName, officePosition, districtID) 
VALUES(:input_levelID, :input_branchID, :input_officeName, :input_officePosition, :input_districtID;

-- ---------------------------------------------------------------------------------------------------------
-- INSERT - ADD a new Office Name WITHOUT District ID
-- ---------------------------------------------------------------------------------------------------------

INSERT INTO Offices(levelID, branchID, officeName, officePosition) 
VALUES(:input_levelID, :input_branchID, :input_officeName, :input_officePosition);

-- ---------------------------------------------------------------------------------------------------------
-- PAGE 12 OF THE WEBSITE DESIGN PDF 
-- ---------------------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------------------
-- Render Voters' Information to be Updated
-- ---------------------------------------------------------------------------------------------------------

SELECT Voters.*, Parties.partyName, Cities.cityName, States.stateName, Genders.genderName, Sexs.sexName 
FROM Voters
	JOIN Affiliations ON Voters.voterID=Affiliations.voterID
	JOIN Cities ON Affiliations.cityID=Cities.cityID
	JOIN States ON Cities.stateID=States.stateID
	JOIN Genders ON Affiliations.genderID=Genders.genderID
	JOIN Sexs ON Affiliations.sexID=Sexs.sexID
	JOIN Parties ON Affiliations.partyID=Parties.partyID
WHERE Voters.voterID=:input_voterID;

-- ---------------------------------------------------------------------------------------------------------
-- Update the Voters' Information
-- should some attributes be changed? ie SSN, birthdate. Should Admin be only allowed to change it
-- if they have confirmed official documentation (ie passport)?
-- 1) Query to update the Voters table
-- 2) Query to update the Affiliations table
-- ---------------------------------------------------------------------------------------------------------

UPDATE Voters
SET Voters.ssn=:input_ssn, Voters.v_fName=:input_vfName, Voters.v_lName=:input_vlName, Voters.birthDate=:input_birthDate,
	Voters.streetNumber=:input_streetNumber, Voters.addressName=:input_addressName, Voters.aptNum=:input_aptNum,
	Voters.zipcode=:input_zipcode, Voters.phoneNumber=:input_phoneNumber, Voters.cellNumber=:input_cellNumber,
	Voters.emailAddress=:input_emailAddress;
WHERE Voters.voterID=:input_voterID;

UPDATE Affiliations
SET Affiliations.partyID=:input_partyID, Cities.cityID=:input_cityID, Sexs.sexID=:input_sexID,
	Genders.genderID=:input_genderID
WHERE Affiliations.voterID=:input_voterID;

-- ---------------------------------------------------------------------------------------------------------
-- Render Candidates' Information as a Voter to be Updated
-- ---------------------------------------------------------------------------------------------------------

SELECT Voters.*, Parties.partyName, Cities.cityName, States.stateName, Genders.genderName, Sexs.sexName 
FROM Voters
	JOIN Affiliations ON Voters.voterID=Affiliations.voterID
	JOIN Cities ON Affiliations.cityID=Cities.cityID
	JOIN States ON Cities.stateID=States.stateID
	JOIN Genders ON Affiliations.genderID=Genders.genderID
	JOIN Sexs ON Affiliations.sexID=Sexs.sexID
	JOIN Parties ON Affiliations.partyID=Parties.partyID
	JOIN Candidates ON Affiliations.candidateID=Affiliations.candidateID
WHERE Candidates.candidateID=:input_candidateID;

-- ---------------------------------------------------------------------------------------------------------
-- Render Candidates' Information as a Voter to be Updated
-- should some attributes be changed? ie SSN, birthdate. Should Admin be only allowed to change it
-- if they have confirmed official documentation (ie passport)?
-- 1) Query to update the Voters table
-- 2) Query to update the Affiliations table
-- 3) Query to update the Candidates table
-- ---------------------------------------------------------------------------------------------------------

UPDATE Voters
SET Voters.ssn=:input_ssn, Voters.v_fName=:input_vfName, Voters.v_lName=:input_vlName, Voters.birthDate=:input_birthDate,
	Voters.streetNumber=:input_streetNumber, Voters.addressName=:input_addressName, Voters.aptNum=:input_aptNum,
	Voters.zipcode=:input_zipcode, Voters.phoneNumber=:input_phoneNumber, Voters.cellNumber=:input_cellNumber,
	Voters.emailAddress=:input_emailAddress;
WHERE Candidates.candidateID=:input_candidateID;

UPDATE Affiliations
SET Affiliations.partyID=:input_partyID, Cities.cityID=:input_cityID, Sexs.sexID=:input_sexID,
	Genders.genderID=:input_genderID
WHERE Affiliations.voterID=:input_candidateID;

UPDATE Candidates
SET Candidates.ssn=:input_ssn, Candidates.c_fName=:input_c_fName, Candidates.c_lName=:input_c_lName, 
	Candidates.birthDate=:input_birthDate
WHERE Candidates.candidateID=:input_candidateID;

-- ---------------------------------------------------------------------------------------------------------
-- PAGE 13 OF THE WEBSITE DESIGN PDF 
-- ---------------------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------------------
-- DISPLAY all elections the voter voted for
-- may need a separate query to show the voter selection
-- ---------------------------------------------------------------------------------------------------------


-- ---------------------------------------------------------------------------------------------------------
-- PAGE 14 OF THE WEBSITE DESIGN PDF 
-- ---------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------
-- DISPLAY Election Results specific to that election 
-- NEED to implement COUNT() to count the number of votes - the function would need to make a new column 
-- to store the tally the number of votes
-- NEED to implement to calculate the percentage of the votes won - the function would need to make a new
-- column to store the percentage
-- ---------------------------------------------------------------------------------------------------------

SELECT CONCAT(Candidates.c_fName, ' ', Candidates.c_lName) AS 'c_fullName', 
Parties.partyName
FROM Elections
	JOIN Occurrences ON Elections.occurrenceID = Occurrences.occurrenceID
	JOIN Pools ON Elections.electionID = Pools.electionID
	JOIN Candidates ON Pools.candidateID = Candidates.candidateID
	JOIN Affiliations ON Candidates.candidateID = Affiliations.candidateID
	JOIN Parties ON Affiliations.partyID=Parties.partyID
    JOIN Voters on Affiliations.voterID=Voters.voterID
WHERE Voters.voterID=:input_voterID