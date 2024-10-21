# Utilisez une image Java de base
FROM openjdk:23-jdk

# Définir le répertoire de travail
WORKDIR /app

# Copier le fichier JAR dans le conteneur
COPY target/hello-docker-0.0.1-SNAPSHOT.jar app.jar 

# Exposer le port que votre application utilise
EXPOSE 8080

# Commande pour exécuter l'application
CMD ["java", "-jar", "app.jar"]
