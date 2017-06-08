using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using DAL;
using System.Data;

namespace BLL
{
    public class TSTBLL
    {
        TSTDAL aadal = new TSTDAL();


         /// <summary>
        /// 根据cookie值判断此用户是否cookie过期及不过期返回信息
        /// </summary>
        public userinfo GetUserInfoOrIsCookie(string state)
        {
            return aadal.GetUserInfoOrIsCookie(state);
        }

          /// <summary>
        /// 用户登录
        /// </summary>
        public userinfo GetLoginUserInfo(string tstcode, int isstate)
        {
            return aadal.GetLoginUserInfo(tstcode,isstate);
        }


        /// <summary>
        /// 获取所有奖品列表,组合字符串并返回
        /// </summary>
        public string GetListAllPrize()
        {
            return aadal.GetListAllPrize();
        }

        /// <summary>
        /// 插入用户抽奖记录
        /// </summary>
        public int Insert_UserPrizeRecord(Guid usercode, int prizelevel, int iswin)
        {
            return aadal.Insert_UserPrizeRecord(usercode, prizelevel, iswin);

        }

          /// <summary>
        /// 返回剩余抽奖次数根据usercode
        /// </summary>
        public string GetPrizeCount(Guid usercode)
        {
            return aadal.GetPrizeCount(usercode);
        }

        /// <summary>
        /// 更新奖品的库存根据奖品等级
        /// </summary>
        public int Update_PrizeNumberByPrizeLevel(int level, string type, Guid usercode)
        {
            return aadal.Update_PrizeNumberByPrizeLevel(level, type,usercode);

        }
        /// <summary>
        /// 获取所有奖品列表根据奖品等级
        /// </summary>
        public prize GetListPrizeByPrizeLevel(int level,Guid usercode)
        {
            return aadal.GetListPrizeByPrizeLevel(level, usercode);
        }
        /// <summary>
        /// 验证是否存在此用户，根据usercode
        /// </summary>
        public bool IsUserCode(Guid usercode)
        {
            return aadal.IsUserCode(usercode);
        }
         /// <summary>
        /// 验证是否存在此用户，如存在，是否以中奖，根据usercode
        /// </summary>
        public bool IsUserCodeAndPrize(Guid usercode)
        {
            return aadal.IsUserCodeAndPrize(usercode);
        }

        /// <summary>
        /// 根据usercode获取用户中奖纪录
        /// </summary>
        public DataSet GetUserDrawResult(string usercode)
        {
            return aadal.GetUserDrawResult(usercode);
        }

        /// <summary>
        /// 获得奖品，插入用户中奖记录
        /// </summary>
        public int Insert_UserWinRecord(Guid usercode, string username, string mp, string add, string prizeid)
        {
            return aadal.Insert_UserWinRecord(usercode, username, mp, add, prizeid);
        }

        /// <summary>
        /// 在最终流程出错-- 更新奖品的库存根据奖品id
        /// </summary>
        public int Update_PrizeNumberByPrizeid(int prizeid, Guid usercode)
        {
            return aadal.Update_PrizeNumberByPrizeid(prizeid,usercode);
        }

























         /// <summary>
        /// <summary>
        /// 插入用户code
        /// </summary>
        public int Insert_UserCode(Guid usercode)
        {
            return aadal.Insert_UserCode(usercode);
        }
        /// <summary>
        /// 验证是否可插入中奖信息
        /// </summary>
        public bool IsUserPrize_Insert(Guid usercode)
        {
            return aadal.IsUserPrize_Insert(usercode);

        }
       

        

        
         /// <summary>
        /// 验证是否抽过奖品
        /// </summary>
        public bool IsUserPrize(Guid usercode)
        {
            return aadal.IsUserPrize(usercode);

        }
       
       
    }
}
