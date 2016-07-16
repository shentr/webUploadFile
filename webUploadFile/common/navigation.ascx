<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="navigation.ascx.cs" Inherits="webUploadFile.navigation1" %>


<header id='index-logo' class='main-header hidden'>
    <div class='container'>
        <div class='row'>
            <div class='col-sm-12'>
                
                <img src='common/Image/logo.png' class='img-responsive' style="display: inline">
            </div>
        </div>
    </div>
</header>
<nav class='main-navigation' id="main-navigation">
    <div class='container'>
        <div class='row'>
            <div class='col-sm-12'>
                <div class='navbar-header'>
                        <span class='nav-toggle-button collapsed' data-toggle='collapse' data-target='#main-menu'>
                        <span class='sr-only'>Toggle navigation</span>
                        
                        </span>
                </div>
                <div class='navbar-collapse collapse' role='navigation' id='main-menu'>
                    <ul class='menu'>
                        <li role='presentation' id='HomePageLi'><a href='index.aspx'>Home Page</a></li>
                        <li role='presentation' id='ProblemLi'><a href='#' title='Problem Set'>查看提交状态</a></li>
                        <li role='presentation' id='StatusLi'><a href='uploadFile.aspx' title='Status'>提交实验</a></li>
                        <li role='presentation' id='DownloadLi'><a href='#' title='Tools Download'>下载实验</a></li>
                        <li role='presentation' id='DownloadLi'><a href='#' title='Tools Download'>教师管理页面</a></li>
                        <li role='presentation' id='ForumLi'><a href='#' title='Discuss'><span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span> 讨论</a></li>
                        <li role="presentation" class="dropdown navbar-right">
                      
                        <% 
                            if(Session.Count==0)
                            {
                                %>
                                <li role='presentation' class='navbar-center'>
                                <button id='login' type='button' class='btn btn-default' data-toggle='modal' data-target='#LoginModel'><i class='fa fa-user'></i> LOGIN</button>
                                </li>
                                <%
                            }
                            else if(Session.Count>0)
                            {
                                %>
                                <li role='presentation' class='dropdown navbar-center'>
                                    <div class='btn-group'>
                                        <button type='button' class='btn btn-default'><% Response.Write(Session["user_name"]); %></button>
                                        <button type='button' class='btn btn-default dropdown-toggle' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>
                                             <span class='caret'></span><span class='sr-only'>Toggle Dropdown</span>
                                        </button>
                                          <ul class='dropdown-menu'>
                                            <li><a id='updateInformation' data-toggle='modal'>更新用户信息</a></li>
                                            <li><a id='updatePassword' data-toggle='modal' data-target='#UpdatePassModel'>更改密码</a></li>

                                            <li role='separator' class='divider'></li>
                                            <li><a id='logout'>Log out</a></li>
                                          </ul>
                                     </div>
                                </li>
                                <%
                            }
                        %>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</nav>


<div class="container">
    <div class='modal fade' id='LoginModel' tabindex='-1' role='dialog' aria-labelledby='LoginModel' aria-hidden='true'>
        <div class='modal-dialog' style="width: 600px">
            <div class='modal-content'>
                <div class='modal-body'>
                    <div class='row'>
                        <div class='col-sm-12 form-box'>
                            <div class='form-top'>
                                <div class='form-top-left'>
                                    <h3>欢迎来到实验室管理系统</h3>
                                    <p>请输入账户名密码：</p>
                                </div>
                                <div class='form-top-right'>
                                    <i class='fa fa-key'></i>
                                </div>
                            </div>
                            <div class='form-bottom'>
                                <form role='form' method='post' action='' class='login-form' id='form-login'>
                                    <div class='form-group'>
                                        <label class='sr-only' for='login-username'>Username</label>
                                        <input type='text' name='login-username' placeholder='Username...' class='form-username form-control' id='login-username'>
                                    </div>
                                    <div class='form-group'>
                                        <label class='sr-only' for='login-password'>Password</label>
                                        <input type='password' name='login-password' placeholder='Password...'
                                               class='form-password form-control' id='login-password'>
                                    </div>
                                    <div class='form-group'>
                                        <div class='row'>
                                            <div class='col-sm-1'></div>
                                            <div class='col-sm-4'>
                                                <button type='button' class='btn btn-default' data-dismiss='modal'
                                                        id='login-registration'>Register
                                                </button>
                                            </div>
                                            <div class='col-sm-2'></div>
                                            <div class='col-sm-4'>
                                                <button type='button' id='login-submit' class='btn btn-primary'> 登录 </button>
                                            </div>
                                            <div class='col-sm-1'>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
    <div class='modal fade' id='SignUpModel' tabindex='-1' role='dialog' aria-labelledby='SignUpModel' aria-hidden='true'>
        <div class='modal-dialog' style="width: 600px">
            <div class='modal-content'>
                <div class='modal-body'>
                    <div class='row'>
                        <div class='col-sm-12 form-box'>
                            <div class='form-top'>
                                <div class='form-top-left'>
                                    <h3>REGISTER</h3>
                                    <p>Tell us who you are:</p>
                                </div>
                                <div class='form-top-right'>
                                    <i class='fa fa-user'></i>
                                </div>
                            </div>
                            <div class='form-bottom'>
                                <form role='form' action='' method='post' class='form-registration'
                                      id='form-registration'>
                                    <div class='form-group'>
                                        <label class='sr-only' for='registration-user-name'>User Name</label>
                                        <input type='text' name='registration-user-name' placeholder='User name...'
                                               class='form-user-name form-control' id='registration-user-name'>
                                    </div>
                                    <div class='form-group'>
                                        <label class='sr-only' for='registration-nick-name'>Nick Name</label>
                                        <input type='text' name='registration-nick-name' placeholder='Nick name...'
                                               class='form-nick-name form-control' id='registration-nick-name'>
                                    </div>
                                    <div class='form-group'>
                                        <label class='sr-only' for='registration-password'>Password</label>
                                        <input type='password' name='registration-password' placeholder='Password...'
                                               class='form-password form-control' id='registration-password'>
                                    </div>
                                    <div class='form-group'>
                                        <label class='sr-only' for='registration-repeat-password'>Repeat password</label>
                                        <input type='password' name='registration-repeat-password'
                                               placeholder='Repeat password...' class='form-repeat-password form-control'
                                               id='registration-repeat-password'>
                                    </div>
                                    <div class='form-group'>
                                        <div class="row">
                                            <label class='col-xs-3 text-center' for='registration-privilege'>Privilege：</label>
                                            <div class="col-xs-9">
                                                <select class='form-control' id='registration-privilege'>
                                                    <option selected='selected' value='student'>Student</option>
                                                    <option value='teacher'>Teacher</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class='form-group'>
                                        <div class="row">
                                            <span id='span-checknum' class='col-xs-3 text-center'>
<!--                                                <img id='img-checknum' border=0 src='registerImage.php' alt='30'/>-->
                                            </span>
                                            <div class="col-xs-9">
                                                <label class='sr-only' for='registration-checknum'>Checknum</label>
                                                <input type='text' name='registration-checknum' placeholder='Verification code...'
                                                       class='form-control' id='registration-checknum'/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class='form-group'>
                                        <div class='row'>
                                            <div class='col-sm-1'></div>
                                            <div class='col-sm-4'>
                                                <button type='reset' id='registration-reset' class='btn btn-default'>RESET</button>
                                            </div>
                                            <div class='col-sm-2'></div>
                                            <div class='col-sm-4'>
                                                <button type='button' id='registration-submit' class='btn btn-primary'>REGISTER
                                                </button>
                                            </div>
                                            <div class='col-sm-1'>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
    <div class="modal fade" id="UserInformationModel" tabindex="-1" role="dialog" aria-labelledby="UserInformationLabel"
         aria-hidden="true">
        <div class="modal-dialog ">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        &times;
                    </button>
                    <h3 class="modal-title" id="myModalLabel">
                        User Information
                    </h3>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-sm-6 text-center"><h3 id="UserInformationUserName"></h3></div>
                        <div class="col-sm-6 text-center"><h3 id="UserInformationNickName"></h3></div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="row">
                                <label class="col-sm-3 col-sm-offset-2">Rank：<span id="UserInformationRank"></span></label>
                                <label class="col-sm-3">Accept：<span id="UserInformationAccepted"></span></label>
                                <label class="col-sm-3">Submit：<span id="UserInformationSubmit"></span></label>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="panel panel-default col-sm-6">
                                    <div class="panel-heading text-center">
                                        <strong class="text-danger">Accept Problems <span class="badge" id="UserInformationACCount"></span></strong>
                                    </div>
                                    <div class="panel-body">
                                        <div id="userShowAcceptList">
                                            <table id="userShowAccept-list-table"></table>
                                        </div>

                                    </div>
                                </div>
                                <div class="panel panel-default col-sm-6">
                                    <div class="panel-heading text-center">
                                        <strong class="text-success">No-Accept Problems <span class="badge" id="UserInformationWACount"></span></strong>
                                    </div>
                                    <div class="panel-body">
                                        <div id="userShowNoAcceptList">
                                            <table id="userShowNoAccept-list-table"></table>
                                        </div>

                                    </div>
                                </div>
                            </div>


                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" id="UserInformationClose" data-dismiss="modal">Close
                    </button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
    <div class="modal fade" id="UpdateInfoModel" tabindex="-1" role="dialog" aria-labelledby="UpdateInfoLabel"
         aria-hidden="true">
        <div class="modal-dialog ">
            <div class="modal-content">
                <div class='modal-body'>
                    <div class='row'>
                        <div class='col-sm-12 form-box'>
                            <div class='form-top'>
                                <div class='form-top-left'>
                                    <h3>Update Your Information</h3>
                                </div>
                                <div class='form-top-right'>
                                    <i class='fa fa-user'></i>
                                </div>
                            </div>
                            <div class='form-bottom'>
                                <form role='form' action='' method='post' class='form-updateInformation'
                                      id='form-updateInformation'>
                                    <div class='form-group'>
                                        <div class="row">
                                            <label class="col-xs-3" for='updateInformation-user-name'>User Name：</label>
                                            <label class="col-xs-9" id='updateInformation-user-name'></label>
                                        </div>
                                    </div>
                                    <div class='form-group'>
                                        <div class="row">
                                            <label class="col-xs-3" for='updateInformation-nick-name'>Nick Name：</label>
                                            <div class="col-xs-9">
                                                <input type='text' name='updateInformation-nick-name' placeholder='Nick name...'
                                                       class='form-control' id='updateInformation-nick-name'>
                                            </div>
                                        </div>
                                    </div>
                                    <div class='form-group'>
                                        <div class="row">
                                            <label class="col-xs-3" for='updateInformation-email'>Email：</label>
                                            <div class="col-xs-9">
                                                <input type='text' name='updateInformation-email' placeholder='Email...'
                                                       class='form-control' id='updateInformation-email'>
                                            </div>
                                        </div>
                                    </div>
                                    <div class='form-group'>
                                        <div class="row">
                                            <label class="col-xs-3" for='updateInformation-school'>School：</label>
                                            <div class="col-xs-9">
                                                <input type='text' name='updateInformation-school' placeholder='School...'
                                                       class='form-control' id='updateInformation-school'>
                                            </div>
                                        </div>
                                    </div>
                                    <div class='form-group'>
                                        <div class='row'>
                                            <div class='col-sm-1'></div>
                                            <div class='col-sm-4'>
                                                <button type='reset' id='updateInformation-reset' class='btn btn-default'>RESET</button>
                                            </div>
                                            <div class='col-sm-2'></div>
                                            <div class='col-sm-4'>
                                                <button type='button' id='updateInformation-submit' class='btn btn-primary'>UPDATE
                                                </button>
                                            </div>
                                            <div class='col-sm-1'>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
    <div class="modal fade" id="UpdatePassModel" tabindex="-1" role="dialog" aria-labelledby="UpdatePassLabel"
         aria-hidden="true">
        <div class="modal-dialog ">
            <div class="modal-content">
                <div class='modal-body'>
                    <div class='row'>
                        <div class='col-sm-12 form-box'>
                            <div class='form-top'>
                                <div class='form-top-left'>
                                    <h3>Update Your Password</h3>
                                </div>
                                <div class='form-top-right'>
                                    <i class='fa fa-user'></i>
                                </div>
                            </div>
                            <div class='form-bottom'>
                                <form role='form' action='' method='post' class='form-updatePassword'
                                      id='form-updatePassword'>
                                    <div class='form-group'>
                                        <div class="row">
                                            <label class="col-xs-3" for='updatePassword-old-password'>Old Password：</label>
                                            <div class="col-xs-9">
                                                <input type='password' name='updatePassword-old-password' placeholder='Old Password...'
                                                       class='form-control' id='updatePassword-old-password'>
                                            </div>
                                        </div>
                                    </div>
                                    <div class='form-group'>
                                        <div class="row">
                                            <label class="col-xs-3" for='updatePassword-new-password'>New Password：</label>
                                            <div class="col-xs-9">
                                                <input type='password' name='updatePassword-new-password' placeholder='New Password...'
                                                       class='form-control' id='updatePassword-new-password'>
                                            </div>
                                        </div>
                                    </div>
                                    <div class='form-group'>
                                        <div class="row">
                                            <label class="col-xs-3" for='updatePassword-repeat-new-password'>Repeat New Password：</label>
                                            <div class="col-xs-9">
                                                <input type='password' name='updatePassword-repeat-new-password' placeholder='Repeat New Password...'
                                                       class='form-control' id='updatePassword-repeat-new-password'>
                                            </div>
                                        </div>
                                    </div>
                                    <div class='form-group'>
                                        <div class='row'>
                                            <div class='col-sm-1'></div>
                                            <div class='col-sm-4'>
                                                <button type='reset' id='updatePassword-reset' class='btn btn-default'>RESET</button>
                                            </div>
                                            <div class='col-sm-2'></div>
                                            <div class='col-sm-4'>
                                                <button type='button' id='updatePassword-submit' class='btn btn-primary'>UPDATE
                                                </button>
                                            </div>
                                            <div class='col-sm-1'>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
</div>

<script type="text/javascript">
    $(function () {
        $("#form-login").validate({
                rules: {
                    'login-username': {
                        'required': true,
                        'usernamePassword-validate': true,
                        'minlength': 1,
                        'maxlength': 15
                    },
                    'login-password': {
                        'required': true,
                        'usernamePassword-validate': true,
                        'minlength': 1,
                        'maxlength': 15
                    }
                },
                submitHandler: function (form) {
                }
            });
        $("#form-registration").validate({
                rules: {
                    'registration-user-name': {
                        'required': true,
                        'usernamePassword-validate': true,
                        'usernameTeam-validate': true,
                        'minlength': 1,
                        'maxlength': 15
                    },
                    'registration-nick-name': {
                        'required': true,
                        'nickname-validate': true,
                        'maxlength': 30
                    },
                    'registration-password': {
                        'required': true,
                        'usernamePassword-validate': true,
                        'minlength': 6,
                        'maxlength': 15
                    },
                    'registration-repeat-password': {
                        'required': true,
                        'equalTo': "#registration-password"

                    },
                    'registration-checknum': {
                        'required': true
                    }

                },
                messages: {
                    'registration-repeat-password': {
                        'equalTo': "两次密码不相同！"
                    }
                },
                submitHandler: function (form) {
                }
            });
        $("#form-updateInformation").validate({
                rules: {
                    'updateInformation-nick-name': {
                        'required': true,
                        'nickname-validate': true,
                        'maxlength': 30
                    },
                    'updateInformation-school': {
                        'required': false,
                        'nickname-validate': true,
                        'maxlength': 100
                    },
                    'updateInformation-email': {
                        'required': false,
                        'email-validate': true,
                    },
                },
                submitHandler: function (form) {
                }
            });
        $("#form-updatePassword").validate({
                rules: {
                    'updatePassword-old-password': {
                        'required': true,
                        'usernamePassword-validate': true,
                        'minlength': 6,
                        'maxlength': 15
                    },
                    'updatePassword-new-password': {
                        'required': true,
                        'usernamePassword-validate': true,
                        'minlength': 6,
                        'maxlength': 15
                    },
                    'updatePassword-repeat-new-password': {
                        'required': true,
                        'equalTo': "#updatePassword-new-password"

                    },
                },
                messages: {
                    'updatePassword-repeat-new-password': {
                        'equalTo': "两次密码不相同！"
                    }
                },
                submitHandler: function (form) {
                }
            });

        $.validator.addMethod("usernamePassword-validate", function (value, element, params) {
            var reg = new RegExp("^[A-Za-z0-9_-]+$");
            return reg.test(value);
        }, "用户名必须是字母、数字、连接符以及下划线！");
        $.validator.addMethod("usernameTeam-validate", function (value, element, params) {
            var reg = new RegExp("^([tT][eE][aA][mM])+");
            return !reg.test(value);
        }, "用户名不能以TEAM开头！");

        $.validator.addMethod("nickname-validate", function (value, element, params) {
            var reg = /[<>;；\/\\'"]/g;
            return !reg.test(value);
        }, "Nick name中含有敏感字符！");
        $.validator.addMethod("email-validate", function (value, element, params) {
            var reg = new RegExp("^[0-9a-z][_.0-9a-z-]{0,31}@([0-9a-z][0-9a-z-]{0,30}[0-9a-z]\.){1,4}[a-z]{2,4}$");
            return reg.test(value);
        }, "Email格式不正确！");

        $('#login').click(function () {
            $('#SignUpModel').modal('hide');
        });
        $('#login-username').change(function(){
           $('#login-password').val('');
        });
        $('#logout').click(function () {
            $.post('loginPost.aspx?order=2', {}, function (data) {
                var result = JSON.parse(data);
                if (result.status == 1) {
                    location.reload();
                }else{
                    $('#AlertP').html(result.message);
                    $('#ErrorAlert').modal('toggle');
                }
            });
        });

        $('#span-checknum,#registration-reset').click(function () {
            $('#span-checknum').html("");
            $('#registration-checknum').val("");
            $.post('registerImage.php?order=2', {}, function (data) {
                $('#span-checknum').html(data);
            });
        });

        $('#login-registration').click(function () {
            $('#span-checknum').html("");
            $('#registration-checknum').val("");
            $.post('registerImage.php?order=2', {}, function (data) {
                $('#span-checknum').html(data);
            });
            $('#SignUpModel').modal('show');
        });


        $('#login-submit').click(function () {
            
            if (($('#form-login').validate()).form()) {
                //PageMethods.login($('#login-username').val(), $.md5($('#login-password').val()));
                
                $.post('loginPost.aspx?order=1', { userName: $('#login-username').val(), password: $.md5($('#login-password').val()) }, function (data) {
                    var result = JSON.parse(data);
                    if (result.status == 1) {
                        location.reload();
                    } else {
                        $('#login-password').val('');
                        $('#LoginModel').modal('hide');
                        $('#AlertP').html(result.message);
                        $('#ErrorAlert').modal('show');
                    }
                });
            }
        });

        $('#updateInformation').click(function () {
            $.post('updateInformationReadPost.php', {}, function (data) {
                var result = JSON.parse(data);
                if (result.status == 1) {
                    $('#updateInformation-user-name').html(result.data.user_name);
                    $('#updateInformation-school').val(result.data.school);
                    $('#updateInformation-email').val(result.data.email);
                    $('#UpdateInfoModel').modal('toggle');
                } else {
                    $('#AlertP').html(result.message);
                    $('#ErrorAlert').modal('show');
                }
            });
        });
        $('#updateInformation-submit').click(function(){
            if (($('#form-updateInformation').validate()).form()) {
                $.post('updateInformationWritePost.php', {nickName: $('#updateInformation-nick-name').val()
                ,school:$('#updateInformation-school').val(),email:$('#updateInformation-email').val()}, function (data) {
                    var result = JSON.parse(data);
                    if (result.status==1) {
                        location.reload();
                    }
                    else {
                        $('#UpdateInfoModel').modal('toggle');
                        $('#AlertP').html(result.message);
                        $('#ErrorAlert').modal('toggle');
                    }
                });
            }
        });
        $('#updatePassword-submit').click(function(){
            if (($('#form-updatePassword').validate()).form()) {
                $.post('updatePasswordPost.php', {
                    password: $.md5($('#updatePassword-old-password').val()),
                    newPassword:$.md5($('#updatePassword-new-password').val())
                }, function (data) {
                    var result = JSON.parse(data);
                    if (result.status==1) {
                        $('#logout').click();
                    }
                    else {
                        $('#UpdatePassModel').modal('toggle');
                        $('#AlertP').html(result.message);
                        $('#ErrorAlert').modal('toggle');
                    }
                });
            }
        });

        $('#userShowAccept-list-table').bootstrapTable({
            height: 250,
            classes: 'table table-striped table-condensed table-hover',
            method: 'get',
            //url: 'downloadListPost.php',
            //search:true,
            columns: [{
                field: 'problem',
                title: 'Problem',
                align: 'center',
                searchable: true
            }, {
                field: 'percent',
                title: 'AC/Submit',
                align: 'center',
            }],
//            pagination: true,
//            sidePagination:'client',
//            pageSize: 100
        });
        $('#userShowNoAccept-list-table').bootstrapTable({
            height: 250,
            classes: 'table table-striped table-condensed table-hover',
            method: 'get',
            //url: 'downloadListPost.php',
            //search:true,
            columns: [{
                field: 'problem',
                title: 'Problem',
                align: 'center',
                searchable: true
            }, {
                field: 'percent',
                title: 'AC/Submit',
                align: 'center',
            }],
//            pagination: true,
//            sidePagination:'client',
//            pageSize: 100
        });
    });
    function showUserInformation(userName) {
        $.post('userShowPost.php', {userName: userName}, function (data) {
            var result = JSON.parse(data);
            if(result.status==1){
                $('#UserInformationUserName').html(result.data.user_name);
                $('#UserInformationAccepted').html(result.data.solved);
                $('#UserInformationSubmit').html(result.data.submitted);
                $('#UserInformationACCount').html(result.data.ACCount);
                $('#userShowAccept-list-table').bootstrapTable('load', result.data.ACList);
                $('div#userShowAcceptList .fixed-table-container').css("padding-bottom", "50px");
                $('#UserInformationWACount').html(result.data.WACount);
                $('#userShowNoAccept-list-table').bootstrapTable('load', result.data.WAList);
                $('div#userShowNoAcceptList .fixed-table-container').css("padding-bottom", "50px");
                $('#UserInformationModel').modal('toggle');
            }
            else
            {
                $('#AlertP').html(result.message);
                $('#ErrorAlert').modal('toggle');
            }
        });
    }
</script>