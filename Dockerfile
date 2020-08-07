FROM mkenjis/mynode_alpine

COPY helloworld.js .
COPY package.json .

EXPOSE 3000:3000
CMD ["node","helloworld.js"]