<p align="center">
  <img src="https://www.especial.gr/wp-content/uploads/2019/03/panepisthmio-dut-attikhs.png" alt="UNIWA" width="150"/>
</p>

<p align="center">
  <strong>UNIVERSITY OF WEST ATTICA</strong><br>
  SCHOOL OF ENGINEERING<br>
  DEPARTMENT OF COMPUTER ENGINEERING AND INFORMATICS
</p>

---

<p align="center">
  <strong>Operating Systems I</strong>
</p>

<h1 align="center">
  Bash Scripts
</h1>

<p align="center">
  <strong>Vasileios Evangelos Athanasiou</strong><br>
  Student ID: 19390005
</p>

<p align="center">
  <a href="https://github.com/Ath21" target="_blank">GitHub</a> ·
  <a href="https://www.linkedin.com/in/vasilis-athanasiou-7036b53a4/" target="_blank">LinkedIn</a>
</p>

<hr/>

<p align="center">
  <strong>Supervision</strong>
</p>

<p align="center">
  Supervisor: Vasileios Mamalis, Professor
</p>
<p align="center">
  <a href="https://ice.uniwa.gr/en/emd_person/vassilios-mamalis/" target="_blank">UNIWA Profile</a>
</p>


<p align="center">
  Co-supervisor: Georgios Pentaris, Postdoctoral Researcher<br>
</p>

<p align="center">
  <a href="https://ice.uniwa.gr/academic_sc_ho/" target="_blank">UNIWA Profile</a>
</p>

</hr>

<p align="center">
  Athens, January 2022
</p>

# Bash Scripts Assignment

This repository contains a comprehensive assignment for **Linux shell scripting**, designed to enhance students’ proficiency in managing the Linux file system and processes through Bash scripts.

---

## Table of Contents

| Section | Folder/File | Description |
|------:|-------------|-------------|
| 1 | `assign/` | Assignment material for the Bash Scripts workshop |
| 1.1 | `assign/OS1_Lab_Ask-2-2021-22.pdf` | Assignment description in English |
| 1.2 | `assign/ΛΣ1_Εργ_Ασκ-2-2021-22.pdf` | Assignment description in Greek |
| 2 | `docs/` | Bash script scenarios and explanations |
| 2.1 | `docs/Bck-Script.txt` | Backup script scenario in English |
| 2.2 | `docs/Bck-Σενάριο.txt` | Backup script scenario in Greek |
| 2.3 | `docs/Cmpdir-Script.txt` | Compare directories script scenario in English |
| 2.4 | `docs/Cmpdir-Σενάριο.txt` | Compare directories script scenario in Greek |
| 2.5 | `docs/Createpvs-Script.txt` | Create PVS script scenario in English |
| 2.6 | `docs/Createpvs-Σενάριο.txt` | Create PVS script scenario in Greek |
| 2.7 | `docs/Mfproc-Script.txt` | Mfproc script scenario in English |
| 2.8 | `docs/Mfproc-Σενάριο.txt` | Mfproc script scenario in Greek |
| 2.9 | `docs/Searching-Script.txt` | Searching script scenario in English |
| 2.10 | `docs/Searching-Σενάριο.txt` | Searching script scenario in Greek |
| 3 | `src/` | Bash script source files |
| 3.1 | `src/bck.sh` | Backup script |
| 3.2 | `src/bck1.sh` | Backup variant 1 script |
| 3.3 | `src/bck2.sh` | Backup variant 2 script |
| 3.4 | `src/cmpdir.sh` | Compare directories script |
| 3.5 | `src/createpvs.sh` | Create PVS script |
| 3.6 | `src/mfproc.sh` | Mfproc processing script |
| 3.7 | `src/searching.sh` | Searching script |
| 4 | `README.md` | Repository overview and usage instructions |

---

## Project Overview

The assignment covers **five Bash scripts** that handle:

1. **Searching Files** – Using `find`, `ls`, and `grep` to filter by permissions, modification time, and directory access.  
2. **Directory Comparison (cmpdir)** – Identifying unique and common files, moving them, and creating hard links.  
3. **Directory Creation (createpvs)** – Creating directories with proper permissions and ownership.  
4. **Backup (bck)** – Archiving files/directories using `tar` with optional scheduling via `cron` or `at`.  
5. **Process Management (mfproc)** – Displaying processes by user or state (Running, Sleeping, Zombie).

The goal is to strengthen **Linux CLI skills and shell scripting expertise**.

---

## Requirements

- **Operating System:** Linux (or WSL for Windows)  
- **Shell Environment:** Bash or compatible  
- **Commands Used:** `find`, `ls`, `grep`, `chmod`, `chown`, `tar`, `cron`, `at`, `ps`, etc.

---

## Installation & Usage

### 1. Clone the Repository
```bash
git clone https://github.com/Operating-Systems-I/Bash-Scripts.git
cd Bash-Scripts
```

### 2. Make Scripts Executable
```bash
chmod u+x searching.sh createpvs.sh cmpdir.sh bck.sh bck1.sh bck2.sh mfproc.sh
```

### 3. Run Scripts with Arguments
```bash
./searching.sh $1 $2
./createpvs.sh $1 $2 $3 $4
./cmpdir.sh $1 $2 $3
./bck.sh $1 $2 $3
./bck1.sh $1 $2 $3 $4
./bck2.sh
./mfproc.sh
```