using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using System.Data;
using System.Web.Script.Serialization;
using System.Web;
using System.IO;
using System.Net;
using System.Data.SqlClient;
using Helper;

namespace DAL
{
    public class TSTDAL
    {
        Model.ObjectResult result = new Model.ObjectResult();
        JavaScriptSerializer serializer = new JavaScriptSerializer();

        #region 根据cookie值判断此用户是否cookie过期及不过期返回信息
        /// <summary>
        /// 根据cookie值判断此用户是否cookie过期及不过期返回信息
        /// </summary>
        public userinfo GetUserInfoOrIsCookie(string state)
        {

            userinfo ui = new userinfo();
            List<UserInfo> list_ui = new List<UserInfo>();
            #region
            try
            {

                StringBuilder sb_select = new StringBuilder();
                sb_select.Append("SELECT  [id],[usercode],[tstcode],[tstcount],[cookiestate],[createdate],[cookiedate] FROM [dbo].[tst_userinfo] where [usercode]='" + state + "' and [cookiestate]=1 and  DATEDIFF (day,[cookiedate],GETDATE() )<7 ");
               
                DataSet ds = SqlHelper.ExecuteDataset(Conn.connectionstring, CommandType.Text, sb_select.ToString());
                if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
                {
                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        UserInfo ui_model = new UserInfo();
                        #region
                        ui_model.tstcode = dr["tstcode"].ToString();
                        ui_model.usercode = dr["usercode"].ToString();
                        ui_model.tstcount = int.Parse(dr["tstcount"].ToString());
                        #endregion
                        list_ui.Add(ui_model);
                    }


                }
                ui.Rows = list_ui;
                return ui;
            }
            catch
            {
                throw;

            }
            #endregion
        }
        #endregion

        #region 用户登录
        /// <summary>
        /// 用户登录
        /// </summary>
        public userinfo GetLoginUserInfo(string tstcode,int isstate)
        {

            userinfo ui = new userinfo();
            List<UserInfo> list_ui = new List<UserInfo>();
            #region
            try
            {

                StringBuilder sb_select = new StringBuilder();
                //增加事务回滚
                sb_select.Append("SET XACT_ABORT ON   BEGIN TRAN   ");
                if (isstate != 0)
                {
                    sb_select.Append("update  [dbo].[tst_userinfo] set  [cookiedate]=GETDATE(),[cookiestate]=1  where [tstcode]='" + tstcode + "' ");
                }
                sb_select.Append("     SELECT  [id],[usercode],[tstcode],[tstcount],[cookiestate],[createdate],[cookiedate] FROM [dbo].[tst_userinfo] where [tstcode]='" + tstcode + "' ");
                sb_select.Append(" COMMIT TRAN ");

                DataSet ds = SqlHelper.ExecuteDataset(Conn.connectionstring, CommandType.Text, sb_select.ToString());
                if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
                {
                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        UserInfo ui_model = new UserInfo();
                        #region
                        ui_model.tstcode = dr["tstcode"].ToString();
                        ui_model.usercode = dr["usercode"].ToString();
                        ui_model.tstcount = int.Parse(dr["tstcount"].ToString());
                        #endregion
                        list_ui.Add(ui_model);
                    }


                }
                else
                {
                    int i = 0;
                    Guid usercode = Guid.NewGuid();
                    SqlParameter[] param = new SqlParameter[2];
                    param[0] = new SqlParameter("@tstcode", SqlDbType.NVarChar, 50);
                    param[0].Value = tstcode;
                    param[1] = new SqlParameter("@usercode", SqlDbType.UniqueIdentifier);
                    param[1].Value = usercode;

                    StringBuilder sb_update = new StringBuilder();
                    sb_update.Append(" INSERT INTO [dbo].[tst_userinfo]([usercode],[tstcode],[tstcount])VALUES(@usercode,@tstcode,0) ");
           

                    i = SqlHelper.ExecuteNonQuery(Conn.connectionstring, CommandType.Text, sb_update.ToString(), param);
                    UserInfo ui_model = new UserInfo();
                    #region
                    ui_model.tstcode = tstcode;
                    ui_model.usercode = usercode.ToString();
                    ui_model.tstcount = 0;
                    #endregion
                    list_ui.Add(ui_model);

                }
                ui.Rows = list_ui;
                return ui;
            }
            catch
            {
                throw;

            }
            #endregion
        }
        #endregion

        #region 获取所有奖品列表,组合字符串并返回
        /// <summary>
        /// 获取所有奖品列表,组合字符串并返回
        /// </summary>
        public string GetListAllPrize()
        {

            StringBuilder sb_value = new StringBuilder();
            #region
            try
            {

                StringBuilder sb_select = new StringBuilder();
                sb_select.Append("SELECT [id] ,[prizename],[prizelevel],[prizenumber] FROM [dbo].[tst_prize]  order by prizelevel");
               
                DataSet ds = SqlHelper.ExecuteDataset(Conn.connectionstring, CommandType.Text, sb_select.ToString());
                if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
                {
                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        Prize aas_model = new Prize();
                        #region
                        aas_model.id = int.Parse(dr["id"].ToString());
                        aas_model.prizename = dr["prizename"].ToString();
                        sb_value.Append(dr["Prizelevel"].ToString() + "," + dr["prizenumber"].ToString() + "|");
                        #endregion

                    }


                }
                return sb_value.ToString();
            }
            catch
            {
                throw;
                // return sb_value.ToString();

            }
            #endregion
        }
        #endregion

        #region 返回剩余抽奖次数根据usercode
        /// <summary>
        /// 返回剩余抽奖次数根据usercode
        /// </summary>
        public string GetPrizeCount(Guid usercode)
        {

            string sb_value = "0";
            #region
            try
            {

                StringBuilder sb_select = new StringBuilder();

                sb_select.Append("SELECT  [tstcount] FROM [dbo].[tst_userinfo] where [usercode]='" + usercode + "'");
                DataSet ds = SqlHelper.ExecuteDataset(Conn.connectionstring, CommandType.Text, sb_select.ToString());
                if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
                {
                   sb_value = ds.Tables[0].Rows[0][0].ToString();

                }
                return sb_value;
            }
            catch
            {
                throw;
                // return sb_value.ToString();

            }
            #endregion
        }
        #endregion

        #region 插入用户抽奖记录
        /// <summary>
        /// 插入用户抽奖记录
        /// </summary>
        public int Insert_UserPrizeRecord(Guid usercode, int prizelevel, int iswin)
        {
            int i = 0;
            try
            {
                #region  SqlParameter
                DateTime dt = DateTime.Now;
                SqlParameter[] param = new SqlParameter[4];
                param[0] = new SqlParameter("@UserCode", SqlDbType.UniqueIdentifier);
                param[0].Value = usercode;
                param[1] = new SqlParameter("@WinLevel", SqlDbType.Int);
                param[1].Value = prizelevel;
                param[2] = new SqlParameter("@IsWinInfo", SqlDbType.Int);
                param[2].Value = iswin;
                param[3] = new SqlParameter("@createdate", SqlDbType.DateTime);
                param[3].Value = dt;
                #endregion

                StringBuilder sb_insert = new StringBuilder();

                //增加事务回滚
                sb_insert.Append("SET XACT_ABORT ON   BEGIN TRAN   ");
                sb_insert.Append("INSERT INTO [dbo].[tst_userrecord]([usercode],[winlevel],[iswininfo],[createdate])VALUES(@UserCode,@WinLevel,@IsWinInfo,@createdate)");

                sb_insert.Append("   update [dbo].[tst_userinfo] set tstcount=tstcount-1 where [usercode]=@UserCode and tstcount>0");
                sb_insert.Append(" COMMIT TRAN ");
                i = SqlHelper.ExecuteNonQuery(Conn.connectionstring, CommandType.Text, sb_insert.ToString(), param);

            }
            catch
            {
                i = 0;
            }
            return i;

        }
        #endregion

        #region 获取所有奖品列表根据奖品等级
        /// <summary>
        /// 获取所有奖品列表根据奖品等级
        /// </summary>
        public prize GetListPrizeByPrizeLevel(int level,Guid usercode)
        {

            prize aas = new prize();
            List<Prize> list_aas = new List<Prize>();
            #region
            try
            {

                StringBuilder sb_select = new StringBuilder();
                sb_select.Append("SELECT top 1 [id] ,[prizename],[prizelevel],[prizenumber] FROM [dbo].[tst_prize] where [prizelevel]=" + level + " order by prizelevel");
                
                DataSet ds = SqlHelper.ExecuteDataset(Conn.connectionstring, CommandType.Text, sb_select.ToString());
                if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0 )
                {
                    string tstcount = GetPrizeCount(usercode);
                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        Prize aas_model = new Prize();
                        #region
                        aas_model.id = int.Parse(dr["id"].ToString());
                        aas_model.prizename = dr["prizename"].ToString();
                        aas_model.prizelevel = int.Parse(dr["prizelevel"].ToString());
                        aas_model.prizenumber = int.Parse(dr["prizenumber"].ToString());
                        aas_model.tstcount =int.Parse( tstcount);
                        #endregion
                        list_aas.Add(aas_model);
                    }


                }
                aas.Rows = list_aas;
                return aas;
            }
            catch
            {
                throw;

            }
            #endregion
        }
        #endregion

        #region 验证是否存在此用户，根据usercode
        /// <summary>
        /// 验证是否存在此用户，根据usercode
        /// </summary>
        public bool IsUserCode(Guid usercode)
        {
            bool isExist = false;
            try
            {
               
                SqlParameter[] param = new SqlParameter[1];
                param[0] = new SqlParameter("@UserCode", SqlDbType.UniqueIdentifier);
                param[0].Value = usercode;
                StringBuilder sb_select = new StringBuilder();
                sb_select.Append("select count(id) from [dbo].[tst_userinfo] where [usercode]=@UserCode ");
                isExist = int.Parse(SqlHelper.ExecuteScalar(Conn.connectionstring, CommandType.Text, sb_select.ToString(), param).ToString()) == 0 ? false : true;
            }
            catch
            {
                isExist = true;
            }
            return isExist;
        }

        #endregion

        #region 验证是否存在此用户，如存在，是否以中奖，根据usercode
        /// <summary>
        /// 验证是否存在此用户，如存在，是否以中奖，根据usercode
        /// </summary>
        public bool IsUserCodeAndPrize(Guid usercode)
        {
            bool isExist = false;
            try
            {

                SqlParameter[] param = new SqlParameter[1];
                param[0] = new SqlParameter("@UserCode", SqlDbType.UniqueIdentifier);
                param[0].Value = usercode;
                StringBuilder sb_select = new StringBuilder();
                sb_select.Append(" SELECT count(a.id) FROM [dbo].[tst_userrecord]as a ");
                sb_select.Append(" left join  [dbo].[tst_userinfo] as b  on b.usercode=a.usercode");
                sb_select.Append(" where b.[usercode]=@UserCode and a.winlevel !=0 ");
                isExist = int.Parse(SqlHelper.ExecuteScalar(Conn.connectionstring, CommandType.Text, sb_select.ToString(), param).ToString()) == 0 ? false : true;
            }
            catch
            {
                isExist = true;
            }
            return isExist;
        }

        #endregion

        #region 根据usercode获取用户中奖纪录
        /// <summary>
        /// 根据usercode获取用户中奖纪录
        /// </summary>
        public DataSet GetUserDrawResult(string usercode)
        {
            try { 
                StringBuilder sb_select = new StringBuilder();
                sb_select.Append("select a.tstcode, b.winlevel, b.createdate from tst_xs.dbo.tst_userinfo as a right join tst_xs.dbo.tst_userrecord as b on b.usercode=a.usercode ");
                sb_select.Append("where b.winlevel >= 1 and a.tstcode='" + usercode + "'");
                return SqlHelper.ExecuteDataset(Conn.connectionstring, CommandType.Text, sb_select.ToString());
            }
            catch
            {
                return null;
            }
        }

        #endregion

        #region 获得奖品，插入用户中奖记录
        /// <summary>
        /// 获得奖品，插入用户中奖记录
        /// </summary>
        public int Insert_UserWinRecord(Guid usercode, string username, string mp, string add, string prizeid)
        {
            int i = 0;
            try
            {
                #region  SqlParameter
                DateTime dt = DateTime.Now;
                SqlParameter[] param = new SqlParameter[5];
                param[0] = new SqlParameter("@UserCode", SqlDbType.UniqueIdentifier);
                param[0].Value = usercode;
                param[1] = new SqlParameter("@UserName", SqlDbType.NVarChar, 50);
                param[1].Value = username;
                param[2] = new SqlParameter("@UserMobilePhone", SqlDbType.NVarChar, 50);
                param[2].Value = mp;
                param[3] = new SqlParameter("@UserAddress", SqlDbType.NVarChar, 500);
                param[3].Value = add;
                param[4] = new SqlParameter("@PrizeId", SqlDbType.Int);
                param[4].Value = int.Parse(prizeid);


                #endregion
                StringBuilder sb_insert = new StringBuilder();
                //增加事务回滚
                sb_insert.Append("SET XACT_ABORT ON   BEGIN TRAN   ");
                sb_insert.Append("INSERT INTO [dbo].[tst_winningrecord]([usercode],[username],[userMobilephone],[useraddress],[prizeid])VALUES");
                sb_insert.Append("(@UserCode,@UserName,@UserMobilePhone,@UserAddress,@PrizeId) ");
                sb_insert.Append("    update [dbo].[tst_userrecord] set iswininfo=1 where usercode=@UserCode");
                sb_insert.Append("  COMMIT TRAN ");
                i = SqlHelper.ExecuteNonQuery(Conn.connectionstring, CommandType.Text, sb_insert.ToString(), param);

            }
            catch
            {
                i = 0;
            }
            return i;

        }
        #endregion

        #region 在最终流程出错-- 更新奖品的库存根据奖品id和用户抽奖次数，根据usercode
        /// <summary>
        /// 在最终流程出错-- 更新奖品的库存根据奖品id和用户抽奖次数，根据usercode
        /// </summary>
        public int Update_PrizeNumberByPrizeid(int prizeid,Guid usercode)
        {

            int i = 0;
            #region
            try
            {
                SqlParameter[] param = new SqlParameter[2];
                param[0] = new SqlParameter("@id", SqlDbType.Int);
                param[0].Value = prizeid;
                param[1] = new SqlParameter("@usercode", SqlDbType.UniqueIdentifier);
                param[1].Value = usercode;
                StringBuilder sb_update = new StringBuilder();
                //增加事务回滚
                sb_update.Append("SET XACT_ABORT ON   BEGIN TRAN   ");
                sb_update.Append("update [dbo].[tst_prize] set prizenumber=prizenumber+1  where [id]=@id and prizenumber >0  ");
                sb_update.Append("update [dbo].[tst_userinfo] set tstcount=tstcount+1  where [usercode]=@usercode and tstcount>0 ");
                sb_update.Append("  COMMIT TRAN ");
                i = SqlHelper.ExecuteNonQuery(Conn.connectionstring, CommandType.Text, sb_update.ToString(), param);

            }
            catch
            {
                i = 0;
            }
            return i;
            #endregion
        }
        #endregion

        #region 更新奖品的库存根据奖品等级和用户抽奖次数
        /// <summary>
        /// 更新奖品的库存根据奖品等级和用户抽奖次数
        /// </summary>
        public int Update_PrizeNumberByPrizeLevel(int level, string type,Guid usercode)
        {

            int i = 0;
            #region
            try
            {
                SqlParameter[] param = new SqlParameter[2];
                param[0] = new SqlParameter("@PrizeLevel", SqlDbType.Int);
                param[0].Value = level;
                param[1] = new SqlParameter("@usercode", SqlDbType.UniqueIdentifier);
                param[1].Value = usercode;
                StringBuilder sb_update = new StringBuilder();
                //增加事务回滚
                sb_update.Append("SET XACT_ABORT ON   BEGIN TRAN   ");
                sb_update.Append("update [dbo].[tst_prize] set prizenumber=prizenumber" + type + "  where [prizelevel]=@PrizeLevel and prizenumber !=0  ");
                if (type == "+1")
                {
                    sb_update.Append("update [dbo].[tst_userinfo] set tstcount=tstcount+1  where [usercode]=@usercode");
                }
                sb_update.Append("  COMMIT TRAN ");
                i = SqlHelper.ExecuteNonQuery(Conn.connectionstring, CommandType.Text, sb_update.ToString(), param);

            }
            catch
            {
                i = 0;
            }
            return i;
            #endregion
        }
        #endregion

        #region 验证是否可插入中奖信息
        /// <summary>
        /// 验证是否可插入中奖信息
        /// </summary>
        public bool IsUserPrize_Insert(Guid usercode)
        {
            bool isExist = false;
            try
            {
               
                SqlParameter[] param = new SqlParameter[1];
                param[0] = new SqlParameter("@UserCode", SqlDbType.UniqueIdentifier);
                param[0].Value = usercode;


                StringBuilder sb_select = new StringBuilder();
                sb_select.Append("select count(id) from [dbo].[tst_userrecord] where");

                sb_select.Append("[usercode]=@UserCode  and iswininfo=0");
                isExist = int.Parse(SqlHelper.ExecuteScalar(Conn.connectionstring, CommandType.Text, sb_select.ToString(), param).ToString()) == 0 ? false : true;
            }
            catch
            {
                isExist = false;
            }
            return isExist;
        }

        #endregion

        #region 插入用户code
        /// <summary>
        /// 插入用户code
        /// </summary>
        public int Insert_UserCode(Guid usercode)
        {
            int i = 0;
            try
            {
                #region  SqlParameter
                DateTime dt = DateTime.Now;
                SqlParameter[] param = new SqlParameter[1];
                param[0] = new SqlParameter("@UserCode", SqlDbType.UniqueIdentifier);
                param[0].Value = usercode;
          
                #endregion

                StringBuilder sb_insert = new StringBuilder();


                sb_insert.Append("INSERT INTO [dbo].[Cruze_UserInfo]([UserCode])VALUES(@UserCode)");

                i = SqlHelper.ExecuteNonQuery(Conn.connectionstring, CommandType.Text, sb_insert.ToString(), param);
               
            }
            catch
            {
                i = 0;
            }
            return i;

        }
        #endregion

        #region 验证是否抽过奖品
        /// <summary>
        /// 验证是否抽过奖品
        /// </summary>
        public bool IsUserPrize(Guid usercode)
        {
            bool isExist = false;
            try
            {
                string datetime = DateTime.Now.ToString("yyyy-MM-dd");
                SqlParameter[] param = new SqlParameter[1];
                param[0] = new SqlParameter("@UserCode", SqlDbType.UniqueIdentifier);
                param[0].Value = usercode;


                StringBuilder sb_select = new StringBuilder();
                sb_select.Append("select count(id) from [dbo].[Cruze_UserRecord] where");

                sb_select.Append("[UserCode]=@UserCode and [createdate] between '" + datetime + " 00:00:00' and '" + datetime + " 23:59:59' ");
                isExist = int.Parse(SqlHelper.ExecuteScalar(Conn.connectionstring, CommandType.Text, sb_select.ToString(), param).ToString()) == 0 ? false : true;
            }
            catch
            {
                isExist = false;
            }
            return isExist;
        }

        #endregion
    }
}
