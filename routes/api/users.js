var router = require('koa-router')();
var user = require('../../lib/model/user');
const md5 = require('md5');
    router.post('/users/login', async (ctx, next) => {
        console.log('login',ctx.request.body);
        let userName = ctx.request.body.userName || '';
        let password = ctx.request.body.password || '';
        await user.findUserData(userName)
            .then(result => {
                let res = result;
                console.log('res',res[0]['password']);
                console.log(md5(password));
                if (res.length && userName === res[0]['userName'] && md5(password) === res[0]['password']) {
                    ctx.body = {
                        code:0,
                        data:[],
                        msg:'登陆成功'
                    };
                    console.log('登录成功')
                }else{
                    ctx.body = {
                        code:-1,
                        data:[],
                        msg:'密码错误或账号不存在'
                    };
                }
            }).catch(err => {
                console.log('err',err)
            })
    })
    .post('/users/reg', async (ctx,next) => {
        console.log(ctx.request.body);
        let val=ctx.request.body;
        val.password=md5(val.password);
        console.log(typeof val);
        await user.registerUser(val).then(
            result => {
                let res = result;
                if(res){
                    ctx.body= {
                        code : 0,
                        data : [],
                        msg : '注册成功'
                    };
                }
                console.log('sss',res)
            }
        ).catch(
            err => {
                console.log("err",err)
            }
        );

    })
    .post('/users/logins', async (ctx,next) => {
        console.log("ss",ctx);
        ctx.body='222'
    });

module.exports = router;
