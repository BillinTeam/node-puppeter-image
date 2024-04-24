FROM node:20

WORKDIR /usr/src/app

RUN apt-get update && apt-get install -y default-jre gcc g++ make python-is-python3 2to3 \
  gconf-service libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 \
  libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgcc1 \
  libgconf-2-4 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 libnspr4 \
  libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libgbm-dev \
  libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxss1 libxtst6 \
  libappindicator1 libnss3 libasound2 libatk1.0-0 libc6 ca-certificates \
  fonts-liberation lsb-release xdg-utils wget ghostscript && rm -rf /var/lib/apt/lists/*

RUN sed -i 's/^.*policy.*coder.*none.*PDF.*//' /etc/ImageMagick-6/policy.xml
RUN sed -i 's/16KP/16MP/g' /etc/ImageMagick-6/policy.xml
