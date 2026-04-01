#  Comandi Git e Ambiente di Lavoro

##  Connettere repository

```bash
cd projects
git clone git@github.com:PACS-25-26/challenge1-FrancescoBarrale.git
git clone git@github.com:PACS-25-26/second-challenge-una-notte-da-clions.git
```

##  Navigazione cartelle

### Accedere alla home (WSL)

```
\\wsl$\Ubuntu\home\francy
```

### Accedere al repository

```bash
cd ~/projects/challenge1-FrancescoBarrale
```

##  Aggiornare repository locale

```bash
git pull
```

##  Aprire progetto in VS Code

```bash
code .
```

##  Aggiungere file e fare push

```bash
git add .
git commit -m "aggiunto file main.cpp"
git push
```

##  Creare un file

```bash
touch main.cpp
```

##  Aprire un PDF

```bash
xdg-open Challenge25-26-1.pdf
```

##  Compilare ed eseguire

```bash
make
./challenge1
make clean
```

##  Gestione Merge Conflict

```bash
git pull --no-rebase
```

Se ci sono conflitti:

1. Aprire i file segnalati
2. Risolvere le parti tra:

```
<<<<<<< HEAD
=======
>>>>>>> origin/main
```

3. Poi eseguire:

```bash
git add .
git commit -m "Risolto conflitto"
git push
```

##  Gestione Branch

### -1 Essere nel main

```bash
git pull
```

### -2 Creare un nuovo branch

```bash
git branch nome-branch
```

---

### -3 Spostarsi nel branch

```bash
git switch nome-branch
```

---

### -4  Vedere tutti i branch

```bash
git branch
```

---

### -5 Pubblicare un branch su GitHub

```bash
git push -u origin nome-branch
```

---

### -6 Fare le aggiunte

Ora fare modifiche necessarie ai file.

### -7 Caricare online le modifiche

```bash
git add .
git commit -m "Descrizione"
git push
```



##  Merge nel branch principale (main/master) --> MERGE

### -1️ Spostarsi sul branch principale

```bash
git switch main
```

### -2️ Aggiornare il branch principale
```bash
git pull origin main
```

### -3️ Fare il merge del branch
```
git merge nome-branch
```

### -4️ Risolvere eventuali conflitti

Se compaiono conflitti, aprire i file e cercare:
```bash
<<<<<<< HEAD
=======
>>>>>>> nome-branch
```

Poi:
```bash
git add .
git commit -m "Risolto conflitto merge"
```
### -5️ Aggiornare GitHub
```bash
git push origin main
```



##  Merge nel branch principale (main/master) --> REBASE 
Con questo altro metodo non rimangono nella timeline del main le modifiche.

### -1 Nel branch creato:
```bash
git rebase main
```

### -2 Risolvere eventuali conflitti

Se compaiono conflitti, aprire i file e cercare:
```bash
<<<<<<< HEAD
=======
>>>>>>> nome-branch
```

Poi:
```bash
git add .
git rebase --continue 
```

### -3 Spostarsi sul branch principale

```bash
git switch main
```


### -4 Fare il merge del branch
```
git merge nome-branch
```

### -5️ Aggiornare GitHub
```bash
git push origin main
```
## ELIMINARE BRANCH
```bash
git branch -d nome-branch
```
se dà errori e vuoi ignorarli:
```bash
git branch -D nome-branch
```