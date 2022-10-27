FROM smartcontract/chainlink:1.8.1-root


WORKDIR /home/chainlink

COPY . .

RUN touch .api .password

RUN echo "user@example.com" > /home/chainlink/.api

RUN echo "my_wallet_password" >> /home/chainlink/.api

RUN echo "my_wallet_password" > /home/chainlink/.password

USER root 

EXPOSE 6688