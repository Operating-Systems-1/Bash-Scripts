<p align="center">
  <img src="https://www.especial.gr/wp-content/uploads/2019/03/panepisthmio-dut-attikhs.png" alt="UNIWA" width="150"/>
</p>

<p align="center">
  <strong>UNIVERSITY OF WEST ATTICA</strong><br>
  SCHOOL OF ENGINEERING<br>
  DEPARTMENT OF COMPUTER ENGINEERING AND INFORMATICS
</p>

<p align="center">
  <a href="https://www.uniwa.gr" target="_blank">University of West Attica</a> ·
  <a href="https://ice.uniwa.gr" target="_blank">Department of Computer Engineering and Informatics</a>
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
  Supervisor: Dimitrios Karolidis, Applications Lecturer<br>
</p>

<p align="center">
  <a href="https://users.uniwa.gr/karolidis/index-en.html" target="_blank">UNIWA Profile</a> ·
  <a href="https://gr.linkedin.com/in/dimitrios-karolidis-36666561" target="_blank">LinkedIn</a>
</p>

<p align="center">
  Co-supervisor: Georgios Pentaris, Academic Scholar<br>
</p>

<p align="center">
  <a href="https://ice.uniwa.gr/academic_sc_ho/" target="_blank">UNIWA Profile</a>
</p>

</hr>

---

<p align="center">
  Athens, January 2022
</p>

---

<p align="center">
  <img src="https://user-images.githubusercontent.com/37275728/186024435-7edf1be2-ca64-4841-98bf-d07cbb362715.png" width="250"/>
</p>

---

# INSTALL

## Bash Scripts

This guide explains how to set up, build, and run the project on your local machine.

---

## 1. Requirements

- **Operating System:** Linux (or WSL for Windows)
- **Shell Environment:** Bash or compatible
- **Commands Used:** `find`, `ls`, `grep`, `chmod`, `chown`, `tar`, `cron`, `at`, `ps`, etc.

---

## 2. Installation & Usage

### 2.1 Clone the Repository

```bash
git clone https://github.com/Operating-Systems-I/Bash-Scripts.git
cd Bash-Scripts
```

### 2.2 Make Scripts Executable

```bash
chmod u+x searching.sh createpvs.sh cmpdir.sh bck.sh bck1.sh bck2.sh mfproc.sh
```

### 2.3 Run Scripts with Arguments

```bash
./searching.sh $1 $2
./createpvs.sh $1 $2 $3 $4
./cmpdir.sh $1 $2 $3
./bck.sh $1 $2 $3
./bck1.sh $1 $2 $3 $4
./bck2.sh
./mfproc.sh
```
