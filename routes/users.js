var router = require('koa-router')();
var user = require('../lib/model/user');
const md5 = require('md5');
router.get('/', async (ctx, next) => {
    let name = ctx.query.name || '';
    let pass = ctx.query.password || '';
    await user.findUserData(name)
        .then(result => {
            let res = result;
            console.log('res',res[0]['pass']);
            console.log(md5(pass))
            if (res.length && name === res[0]['name'] && md5(pass) === res[0]['pass']) {
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
            console.log(err)
        })
});

module.exports = router;
