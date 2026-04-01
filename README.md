# 📘 Comandi Git e Ambiente di Lavoro

## 🔗 Connettere repository

```bash
cd projects
git clone git@github.com:PACS-25-26/challenge1-FrancescoBarrale.git
git clone git@github.com:PACS-25-26/second-challenge-una-notte-da-clions.git
```

## 📂 Navigazione cartelle

### Accedere alla home (WSL)

```
\\wsl$\Ubuntu\home\francy
```

### Accedere al repository

```bash
cd ~/projects/challenge1-FrancescoBarrale
```

## 🔄 Aggiornare repository locale

```bash
git pull
```

## 💻 Aprire progetto in VS Code

```bash
code .
```

## ➕ Aggiungere file e fare push

```bash
git add .
git commit -m "aggiunto file main.cpp"
git push
```

## 📄 Creare un file

```bash
touch main.cpp
```

## 📖 Aprire un PDF

```bash
xdg-open Challenge25-26-1.pdf
```

## ⚙️ Compilare ed eseguire

```bash
make
./challenge1
make clean
```

## ⚠️ Gestione Merge Conflict

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

## 🌿 Gestione Branch

### Creare un nuovo branch

```bash
git branch nome-branch
```

### Creare e spostarsi subito nel branch

```bash
git checkout -b nome-branch
```

### (Metodo moderno equivalente)

```bash
git switch -c nome-branch
```

---

### 🔄 Passare da un branch all'altro

```bash
git checkout nome-branch
```

oppure:

```bash
git switch nome-branch
```

---

### 📋 Vedere tutti i branch

```bash
git branch
```

---

### ⬆️ Pubblicare un branch su GitHub

```bash
git push -u origin nome-branch
```

---

### 🔙 Tornare al branch principale

```bash
git checkout main
```

oppure:

```bash
git switch main
```


## 🔀 Merge nel branch principale (main/master)

### 1️⃣ Spostarsi sul branch principale
```bash
git checkout main
```
oppure:
```bash
git switch main
```
2️⃣ Aggiornare il branch principale
```bash
git pull origin main
```
3️⃣ Fare il merge del branch
```
git merge nome-branch
```

Esempio:
```bash
git merge feature-login
```

4️⃣ Risolvere eventuali conflitti

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
5️⃣ Aggiornare GitHub
```bash
git push origin main
```
🚀 Riassunto veloce
```bash
git switch main
git merge nome-branch
git push origin main
```