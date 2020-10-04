FROM node:14.7.0-alpine as build

RUN rm -rf /app && mkdir /app
WORKDIR /app

COPY . /app

RUN npm config set registry https://registry.npm.taobao.org && npm install --frozen-lockfile --check-files

RUN npm run build

FROM nginx

COPY --from=build /app/dist /app
COPY --from=build /app/nginx/default.conf /etc/nginx/conf.d/default.conf