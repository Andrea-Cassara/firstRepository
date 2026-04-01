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
