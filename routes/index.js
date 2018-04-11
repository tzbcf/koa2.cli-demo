var router = require('koa-router')();

router.get('/', async function (ctx, next) {
  ctx.state = {
    title: 'koa2 title',
      bb:'222'
  };
  await ctx.render('index', {a:1});
})
module.exports = router;
