using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace ASPNetForms2.files
{
    public class NewEmpData
    {
        public string ReqGID { get; set; }
        public string ReqName { get; set; }
        public string ReqPhone { get; set; }
        public string ReqCell { get; set; }
        public string ReqEmail { get; set; }
        public string FName { get; set; }
        public string Middle { get; set; }
        public string LName { get; set; }
        public string GID { get; set; }
        public string Supervisor { get; set; }
        public string Location { get; set; }
        public string ARE { get; set; }
        public string WorkStartDate { get; set; }
        public string PCType { get; set; }
        public string OtherHardware { get; set; }
        public string Deskphone { get; set; }

        public NewEmpData(string reqGID, string reqName, string reqPhone, string reqCell, string reqEmail, string fName,
                          string middle, string lName, string gid, string supervisor, string location, string are,
                          string workStartDate, string pcType, string otherHardware, string deskphone)
        {
            ReqGID = reqGID;
            ReqName = reqName;
            ReqPhone = reqPhone;
            ReqCell = reqCell;
            ReqEmail = reqEmail;

            FName = fName;
            Middle = middle;
            LName = lName;
            GID = gid;
            Supervisor = supervisor;
            Location = location;
            ARE = are;
            WorkStartDate = workStartDate;

            PCType = pcType;
            OtherHardware = otherHardware;
            Deskphone = deskphone;
        }

        public NewEmpData(string reqGID)
        {
            ReqGID = reqGID;
        }
    }
}