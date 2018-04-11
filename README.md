# koa2-demo


这个项目是express风格的最新的Koa 2项目的示例


框架已大致搭好，可做api开发，也可做web开发


http://127.0.0.1:3000/ 

## 启动方式

最简单启动方式

```
node bin/run
```

最常用的集成nodemon的方式,代码变动会自动重载(其实就是nodemon去执行bin/run)

```
npm start
```

支持pm2部署

```
 #npm run pm2
 pm2 start bin/run 
```




需要注意的koa2使用的koa-views也是下一版本的koa-views@next，当前项目已经处理过了，不需要再处理的，哈哈


### jade 


app.use(views(__dirname + '/views', {
  extension: 'jade'
}));

