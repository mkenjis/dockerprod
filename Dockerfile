FROM mkenjis/mynode_img

COPY helloworld.js .
COPY package.json .

EXPOSE 3000:3000
CMD ["node","helloworld.js"]