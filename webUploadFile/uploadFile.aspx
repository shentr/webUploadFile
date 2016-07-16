<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="uploadFile.aspx.cs" Inherits="webUploadFile.uploadFile" MasterPageFile="~/common/web.Master" %>
<asp:Content ContentPlaceHolderID="head" runat="server">
    <link rel='stylesheet' type='text/css' href='common/style/css/fileinput.min.css'/>
    <script src='common/scripts/fileinput.min.js' type='text/javascript'></script>
</asp:Content>

<asp:Content ContentPlaceHolderID="body" runat="server">
                <div id="nameListCreateList">
                    <center><h1>上传文件</h1></center>
                    <div style="margin-top:3%;"></div>
                    <div class="row row-margin-bottom">
                        <label for="nameListCreateList-title" class="col-sm-3 text-right">名单名称：</label>
                        <div class="col-sm-6">
                            <input class="form-control" type="text" id="nameListCreateList-title">
                        </div>
                    </div>
                    <div class="row row-margin-bottom">
                        <label for="nameListCreateList-uploadNameList" class="col-sm-3 text-right">学生名单：</label>
                        <div class="col-sm-6">
                            <input id="nameListCreateList-uploadNameList" name="nameListCreateList-uploadNameList" type="file">
                        </div>
                    </div>
                </div>

    <script>
        $(function(){
            $('#nameListCreateList-uploadNameList').fileinput({
                uploadUrl: 'uploadFilePost.aspx', //上传的地址
                //allowedFileExtensions: ['txt'],//接收的文件后缀
                showUpload: true, //是否显示上传按钮
                showCancel: false,
                showCaption: true,//是否显示标题
                showPreview: true,
                showRemove: false,
                browseClass: "btn btn-primary", //按钮样式
                textEncoding: "gbk",
                previewFileIcon: "<i class='glyphicon glyphicon-king'></i>",
            }).on('filebatchpreupload', function (event, data, previewId, index) {
                data.extra.title = $('#nameListCreateList-title').val();
            }).on('fileuploaded', function (event, data, previewId, index) {
                $('#nameListCreateList-title').val('');
                $('#nameListCreateList-uploadNameList').fileinput('clear').fileinput('enable');
            });
            $('#nameListCreateList-uploadNameList').fileinput('clear').fileinput('enable');
        });
    </script>
</asp:Content>