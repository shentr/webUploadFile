using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace webUploadFile.common
{
    public class postStatus
    {
        public int status;
        public string message;
        public postStatus(int sta,string mes)
        {
            status = sta;
            message = mes;
        }
    }
}