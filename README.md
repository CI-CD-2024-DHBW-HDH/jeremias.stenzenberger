# Klausur 2023 DHBW HDH

## Setup

### Klone dieses Repository

1. Klone das Repository
    ```bash
    git clone <TODO repo url>
    cd klausur
    git remote remove origin
    ```
2. Erstelle in der GitHub Organisation ein Repository mit dem Namen **\<vorname>.\<nachname>**
3. Lade den Stand in das Repository hoch
   ```bash
   git remote add origin <url deines Repositories>
   git push -u origin master
   ```
4. Erstelle einen Branch für die Bearbeitung
   > Vergesse am Ende nicht deine Bearbeitung hochzuladen

### Sicherstellen, dass alles geht

Führe folgende Befehle in deinem Repository aus, um sicherzustellen, dass alles geht:

```bash
npm install

npm run dev
```

## Aufgaben (20 Punkte)

1. Installiere: **(3 Punkte)**
   * ESLint
   * Jest
   * Prettier
   > Die Config Dateien brauchen nicht angepasst werden
   
   > Denke auch an die nötigen Typescript dependencies
2. Schreibe ein `Dockerfile`, dass dazu benutzt werden kann, die Seite zur Verfügung zu stellen **(2 Punkte)**
3. Schreibe GitHub Actions für: **(3 Punkte)**
   * Continuous Integration
   * Continuous Delivery (GitHub Packages)
   * Continuous Deployment (GitHub Pages)
4. Definiere alle nötigen Manifeste um das erstellte Image auf einem Kubernetes Cluster zu deployen **(5 Punkte)**
5. Erkläre in eigenen Worten:
   * Welche Vorteile ein Kubernetes Deployment gegenüber einem Kubernetes Pod hat **(2 Punkte)**
     * zentrale Verwaltung der Pods über das Deployment(-File)
     * Pods können innerhalb des Deployments skaliert werden
     * Deployments können Pods dynamisch mit definierten regeln erstellen oder löschen, je nachdem ob einzelne Nodes abstürzen
   * Wofür ein Kubernetes Service gut ist **(2 Punkte)**
     * interne Lastenverteilung zwischen den Pods
     * stellen eine einheitliche Anlaufstelle zu den (und zwischen den) Pods zur Verfügung. Die IP-Adressen der einzelnen Pods könnten sich ändern, so dass diese bei der Verwendung einer fest hinterlegten IP-Adresse möglicherweise nicht mehr angesprochen werden können. Verwendet man einen Service, treten solche Probleme nicht auf
     * In den Anwendungen müssen keine Service Discovery Mechanismen implementiert werden
   * Mehrere Wege wie man eine Kubernetes Anwendung von außen erreichen kann **(3 Punkte)**
     * über einen Ingress-Service, der einkommenten HTTP-Verkehr verarbeitet. Dieser kann auch Load-Balancing betreiben, SSL terminieren und Namensbasiertes (DNS)-Hosting z.B. über einen Nginx-Ingress-Controller.
     * über einen NodePort-Service, der an den jeweiligen Nodes den angegebenen Port öffnet und über den Service an die Pods weiterleitet
     * über einen LoadBalancer(-Service). Bei der Anlage dieses Services, legt der Cloud-Provider einen externen LoadBalancer an. Dieser stellt eine erreichbare IP zur Verfügung, über den die Pods auf den Nodes erreicht werden können

## Zusatzaufgabe:

Definiere einen Kubernetes Job **(2 Punkte)**