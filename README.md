![Alt text](https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Flag_of_the_United_Kingdom_%281-2%29.svg/255px-Flag_of_the_United_Kingdom_%281-2%29.svg.png)

# Bash Scripts

For the requested Assignment, click the link:
[Assignment](Assignment/#EN_OS1_Lab_Ask-2-2021-22.pdf)

For the detailed Documentation and Source Code of Searching script, click the link:
[Searching-Script](Searching-Script/#EN_19390005.G9.EX2.Q1.txt)

For the detailed Documentation and Source Code of Createpvs script, click the link:
[Createpvs-Script](Createpvs-Script/#EN_19390005.G9.EX2.Q2.txt)

For the detailed Documentation and Source Code of Cmpdir script, click the link:
[Cmpdir-Script](Cmpdir-Script/#EN_19390005.G9.EX2.Q3.txt)

For the detailed Documentation and Source Code of Bck script, click the link:
[Bck-Script](Bck-Script/#EN_19390005.G9.EX2.Q4.txt)

For the detailed Documentation and Source Code of Mfproc script, click the link:
[Mfproc-Script](Mfproc-Script/#EN_19390005.G9.EX2.Q5.txt)


## Course Information
- **Course**: [Operating Systems 1](https://ice.uniwa.gr/education/undergraduate/courses/operating-systems-i/)
- **Semester**: 3
- **Program Study**: [UNIWA](https://www.uniwa.gr/)
- **Department**: [Informatics and Computer Engineering](https://ice.uniwa.gr/)
- **Lab Instructor**: Pentaris Georgios
- **Academic Season**: 2021-2022

## Student Information
- **Name**: Athanasiou Vasileios Evangelos
- **Student ID**: 19390005
- **Status**: Undergraduate

## Assignment Title
**Title**: Linux Shell Script

## Description
This assignment focuses on developing Linux shell scripts to perform various file system operations. Students are required to write scripts that explore file and directory comparison, file permissions, modification tracking, and process management. The goal is to enhance proficiency with shell scripting and basic Linux commands.

### Tasks Overview:
1. **Script 1: Searching**
   - Accepts two integers as arguments and asks the user for a directory name.
   - Uses the `find` command to:
     - Display files in the directory based on permissions.
     - Show files modified within the last 'x' days.
     - Identify subdirectories accessed in the last 'x' days.
   - Uses `ls` and `grep` to filter and display files with specific permissions.

2. **Script 2: cmpdir**
   - Compares the contents of two directories.
   - Displays how many and which files are unique to each directory and their total sizes.
   - Shows common files and moves them to a third directory, creating hard links in the original directories.

3. **Script 3: createpvs**
   - Creates subdirectories within a specified root folder, based on input parameters.
   - Ensures existing folders are not overwritten.
   - Sets permissions and ownership for the new directories.

4. **Script 4: bck**
   - Performs backups of specified files or directories using `tar`.
   - Accepts optional scheduling using `cron` or `at` for automated backups.

5. **Script 5: mfproc**
   - Displays process information for a specific user or process state.
   - Shows processes in Running (R), Sleeping (S), or Zombie (Z) states based on user input.

## Requirements
- **Linux OS**: The scripts are designed for use on a Linux-based system.
- **Shell**: Bash or similar shell environment.
- **Commands Used**: `find`, `ls`, `grep`, `chmod`, `chown`, `tar`, `cron`, `at`, `ps`, and more.

## Installation & Usage

### 1. Clone the Repository
Download the repository to your local machine's file system:
```
git clone https://github.com/Operating-Systems-I/Bash-Scripts.git
```
### 2. Modify Permissions
Ensure the scripts are executable:
```
chmod u+x searching.sh
```
```
chmod u+x createpvs.sh
```
```
chmod u+x cmpdir.sh
```
```
chmod u+x bck.sh
```
```
chmod u+x bck1.sh
```
```
chmod u+x bck2.sh
```
```
chmod u+x mfproc.sh
```
### 3. Run Scripts
Execute the scripts with the appropriate arguments:
```
./searching.sh $1 $2
```
```
./createpvs.sh $1 $2 $3 $4
```
```
./cmpdir.sh $1 $2 $3 
```
```
./bck.sh $1 $2 $3
```
```
./bck1.sh $1 $2 $3 $4
```
```
./bck2.sh
```
```
./cmpdir.sh
```


![Alt text](https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Flag_of_Greece.svg/255px-Flag_of_Greece.svg.png)

# Σενάρια Bash

Για τη ζητούμενη Ανάθεση, κάντε κλικ στο σύνδεσμο:
[Assignment](Assignment/#GR_OS1_Lab_Ask-2-2021-22.pdf)

Για τη λεπτομερή Τεκμηρίωση και τον Πηγαίο Κώδικα του σεναρίου αναζήτησης, κάντε κλικ στο σύνδεσμο:
[Searching-Script](Searching-Script/#GR_19390005.G9.EX2.Q1.txt)

Για τη λεπτομερή Τεκμηρίωση και τον πηγαίο Κώδικα του σεναρίου Createpvs, κάντε κλικ στο σύνδεσμο:
[Createpvs-Script](Createpvs-Script/#GR_19390005.G9.EX2.Q2.txt)

Για τη λεπτομερή Τεκμηρίωση και τον πηγαίο Κώδικα του σεναρίου Cmpdir, κάντε κλικ στο σύνδεσμο:
[Cmpdir-Script](Cmpdir-Script/#GR_19390005.G9.EX2.Q3.txt)

Για τη λεπτομερή Τεκμηρίωση και τον πηγαίο Κώδικα του σεναρίου Bck, κάντε κλικ στο σύνδεσμο:
[Bck-Script](Bck-Script/#GR_19390005.G9.EX2.Q4.txt)

Για τη λεπτομερή Τεκμηρίωση και τον Πηγαίο Κώδικα του σεναρίου Mfproc, κάντε κλικ στο σύνδεσμο:
[Mfproc-Script](Mfproc-Script/#GR_19390005.G9.EX2.Q5.txt)

## Πληροφορίες μαθήματος
- **Μάθημα**: [Λειτουργικά Συστήματα 1](https://ice.uniwa.gr/education/undergraduate/courses/operating-systems-i/)
- **Εξάμηνο**: 3
- **Μελέτη προγράμματος**: [UNIWA](https://www.uniwa.gr/)
- **Τμήμα**: [Μηχανικός Πληροφορικής και Υπολογιστών](https://ice.uniwa.gr/)
- **Διδάσκων εργαστηρίου**: Πεντάρης Γεώργιος
- **Ακαδημαϊκή περίοδος**: 2021-2022

## Πληροφορίες για τους φοιτητές
- **Όνομα**: Αθανασίου Βασίλειος Ευάγγελος
- **Αριθμός φοιτητή**: 19390005
- **Status**: Προπτυχιακός τίτλος σπουδών

## Τίτλος ανάθεσης
**Τίτλος**: Linux Shell Script

## Περιγραφή
Αυτή η εργασία επικεντρώνεται στην ανάπτυξη σεναρίων κελύφους Linux για την εκτέλεση διαφόρων λειτουργιών του συστήματος αρχείων. Οι μαθητές καλούνται να γράψουν σενάρια που διερευνούν τη σύγκριση αρχείων και καταλόγων, τα δικαιώματα αρχείων, την παρακολούθηση τροποποιήσεων και τη διαχείριση διεργασιών. Ο στόχος είναι να ενισχυθεί η επάρκεια με το shell scripting και τις βασικές εντολές του Linux.

### Επισκόπηση εργασιών:
1. **Σενάριο 1: Αναζήτηση**
   - Δέχεται δύο ακέραιους αριθμούς ως ορίσματα και ζητά από το χρήστη ένα όνομα καταλόγου.
   - Χρησιμοποιεί την εντολή `find` για να:
      - Να εμφανίζει τα αρχεία στον κατάλογο με βάση τα δικαιώματα.
      - Εμφάνιση αρχείων που έχουν τροποποιηθεί τις τελευταίες 'x' ημέρες.
      - Προσδιορίζει τους υποκαταλόγους στους οποίους έγινε πρόσβαση τις τελευταίες 'x' ημέρες.
   - Χρησιμοποιεί τις εντολές `ls` και `grep` για να φιλτράρει και να εμφανίζει αρχεία με συγκεκριμένα δικαιώματα.

2. **Σχέδιο 2: cmpdir**
   - Συγκρίνει τα περιεχόμενα δύο καταλόγων.
   - Εμφανίζει πόσα και ποια αρχεία είναι μοναδικά σε κάθε κατάλογο και το συνολικό τους μέγεθος.
   - Εμφανίζει τα κοινά αρχεία και τα μετακινεί σε έναν τρίτο κατάλογο, δημιουργώντας σκληρούς συνδέσμους στους αρχικούς καταλόγους.

3. **Script 3: createpvs**
   - Δημιουργεί υποκαταλόγους μέσα σε έναν καθορισμένο ριζικό φάκελο, με βάση τις παραμέτρους εισόδου.
   - Διασφαλίζει ότι οι υπάρχοντες φάκελοι δεν αντικαθίστανται.
   - Ορίζει δικαιώματα και ιδιοκτησία για τους νέους καταλόγους.

4. **Script 4: bck**
   - Εκτελεί αντίγραφα ασφαλείας των καθορισμένων αρχείων ή καταλόγων χρησιμοποιώντας το `tar`.
   - Δέχεται προαιρετικό χρονοπρογραμματισμό χρησιμοποιώντας `cron` ή `at` για αυτοματοποιημένα αντίγραφα ασφαλείας.

5. **Script 5: mfproc**   
   - Εμφανίζει πληροφορίες διεργασιών για έναν συγκεκριμένο χρήστη ή κατάσταση διεργασίας.
   - Εμφανίζει διεργασίες σε κατάσταση Running (R), Sleeping (S) ή Zombie (Z) με βάση την είσοδο του χρήστη.

## Απαιτήσεις
- **Λειτουργικό σύστημα Linux**: Τα σενάρια έχουν σχεδιαστεί για χρήση σε σύστημα που βασίζεται σε Linux.
- **Shell**: Bash ή παρόμοιο περιβάλλον κελύφους.
- **Χρησιμοποιούμενες εντολές**: `find`, `ls`, `grep`, `chmod`, `chown`, `tar`, `cron`, `at`, `ps` και άλλες.

## Εγκατάσταση & Χρήση

### 1. Κλωνοποιήστε το αποθετήριο
Κατεβάστε το αποθετήριο στο σύστημα αρχείων του τοπικού σας μηχανήματος:
```
git clone https://github.com/Operating-Systems-I/Bash-Scripts.git
```
### 2. Τροποποίηση δικαιωμάτων
Βεβαιωθείτε ότι τα σενάρια είναι εκτελέσιμα:
```
chmod u+x searching.sh
```
```
chmod u+x createpvs.sh
```
```
chmod u+x cmpdir.sh
```
```
chmod u+x bck.sh
```
```
chmod u+x bck1.sh
```
```
chmod u+x bck2.sh
```
```
chmod u+x mfproc.sh
```
### 3. Εκτέλεση σεναρίων
Εκτελέστε τα σενάρια με τα κατάλληλα ορίσματα:
```
./searching.sh $1 $2
```
```
./createpvs.sh $1 $2 $3 $4
```
```
./cmpdir.sh $1 $2 $3 
```
```
./bck.sh $1 $2 $3
```
```
./bck1.sh $1 $2 $3 $4
```
```
./bck2.sh
```
```
./cmpdir.sh
```
