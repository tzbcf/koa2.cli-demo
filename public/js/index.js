$(function () {
    let init={
        url:'http://127.0.0.1:3000',
        main(){
            init.login()
        },
        login(){
            $(".login .btn-submit").on("click", () => {
                let userName = $("#userName").val(),
                    password = $("#password").val();
                init.loginRequest(userName,password);
                console.log(userName,password);
            });
            $(".login .btn-reg").on("click", () => {
                location.href = init.url+'/register'
            });
            $(".register .btn-reg").on("click", () => {
                let data={
                    userName : $("#userName").val() || '',
                    password : $("#password").val() || '',
                    name : $("#name").val() || '',
                    identityId : $("#identityId").val() || '',
                    phoneId : $("#phoneId").val() || ''
                };
                init.registerRequest(data)
            })
        },
        loginRequest(userName,password){
            let data={
                userName,
                password
            };
            $.ajax({
                url:init.url+'/api/users/login',
                type:'POST',
                dataType:'json',
                data:data,
                success(res){
                    console.log(res);
                    if(!res.code){
                        location.href=init.url+'/home'
                    }
                },error(err){
                    console.log(err)
                }
            })
        },
        registerRequest(data){
            $.ajax({
                url:init.url+'/api/users/reg',
                type:'POST',
                data:data,
                dataType:'json',
                success(res){
                    console.log(res);
                    if(!res.code){
                        location.href=init.url+'/home'
                    }
                },error(err){
                    console.log(err)
                }
            })
        }
    };
    init.main()
})