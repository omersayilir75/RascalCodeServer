FROM codercom/code-server:latest
RUN sudo apt update
RUN sudo apt install openjdk-17-jdk -y
RUN code-server --install-extension usethesource.rascalmpl
COPY newRascalProject.sh ./ 
RUN sudo chmod +x ./newRascalProject.sh
RUN ./newRascalProject.sh
EXPOSE 8080
CMD ["code-server", "./workingdir", "--bind-addr", "0.0.0.0:8080", "--auth", "password"]