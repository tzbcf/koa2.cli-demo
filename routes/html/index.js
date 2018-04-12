var router = require('koa-router')();

router
    .get('/', async (ctx, next) => {
        await ctx.render('index', {});
    })
    .get('register', async (ctx, next) => {
        await ctx.render('register',{});
    })
    .get('home', async (ctx,next) => {
        await ctx.render('home',{})
    })
module.exports = router;
