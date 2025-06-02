FROM node:lts-buster
RUN git clone https://github.com/salvtore509/ALPHABOY-TECH-MD-V1/root/salvatore509 
WORKDIR /root/salvatore509
RUN npm install && npm install -g pm2 || yarn install --network-concurrency 1
COPY . .
EXPOSE 9090
CMD ["npm", "start"]
