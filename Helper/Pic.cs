using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.Drawing.Text;
using System.Web;
using System.Net;
using System.IO;

namespace Helper
{
    public class Pic
    {

        #region "把指定图片转换为byte"
        /// <summary>
        /// 把指定图片转换为byte
        /// </summary>
        /// <param name="path">图形路径</param>
        /// <returns></returns>
        public static byte[] GetPhoto(string path)
        {
            byte[] photo = new byte[0];
            if (File.Exists(path))
            {
                FileStream file = new FileStream(path, FileMode.Open, FileAccess.Read);
                photo = new byte[file.Length];
                file.Read(photo, 0, photo.Length);
                file.Close();
            }
            return photo;
        }
        #endregion
        
        #region "图片处理"
        /// <summary>
        /// 生成文字图片
        /// </summary>
        /// <param name="text"></param>
        /// <returns></returns>
        public static Bitmap creatStrImgByChar(string text)
        {
            char[] textCharList = text.ToCharArray();

            int nBmpWidth = 27 * text.Length;
            int nBmpHeight = 32;
            Bitmap bmp = new Bitmap(nBmpWidth, nBmpHeight);

            Graphics g = Graphics.FromImage(bmp);
            g.TextRenderingHint = TextRenderingHint.AntiAlias;
            g.TextContrast = 12;

            //这里的三个属性可以根据情况开放.
            g.SmoothingMode = SmoothingMode.HighQuality;
            //g.CompositingQuality = CompositingQuality.HighQuality; 
            //g.InterpolationMode = InterpolationMode.HighQualityBicubic; 

            //g.FillRectangle(new SolidBrush(Color.Red), new Rectangle(0, 0, nBmpWidth, nBmpHeight));

            Font font = new Font("微软雅黑", 12, FontStyle.Regular);

            PointF point = new PointF(0.0F, 0.0F);

            for (int i = 0; i < textCharList.Length; i++)
            {
                g.DrawString(textCharList[i].ToString(), font, new SolidBrush(Color.White), 0 + i * 26, 0);
            }

            g.Dispose();

            return bmp;
        }

        /// <summary>
        /// 生成文字图片
        /// </summary>
        /// <param name="text"></param>
        /// <returns></returns>
        public static Bitmap creatStrImg(string text)
        {
            int nBmpWidth = 30 * text.Length;
            int nBmpHeight = 22;
            Bitmap bmp = new Bitmap(nBmpWidth, nBmpHeight);

            Graphics g = Graphics.FromImage(bmp);
            g.TextRenderingHint = TextRenderingHint.AntiAlias;
            g.TextContrast = 12;

            //这里的三个属性可以根据情况开放.
            g.SmoothingMode = SmoothingMode.HighQuality;
            //g.CompositingQuality = CompositingQuality.HighQuality; 
            //g.InterpolationMode = InterpolationMode.HighQualityBicubic; 

            //g.FillRectangle(new SolidBrush(Color.Red), new Rectangle(0, 0, nBmpWidth, nBmpHeight));

            Font font = new Font("微软雅黑", 10, FontStyle.Bold);

            PointF point = new PointF(0.0F, 0.0F);

            g.DrawString(text, font, new SolidBrush(Color.White), 0, 0);

            g.Dispose();

            return bmp;
        }

        /// <summary>
        /// 生成文字图片
        /// </summary>
        /// <param name="text"></param>
        /// <returns></returns>
        public static Bitmap creatPrintStrImg(string text, string from)
        {
            int nBmpWidth = 380;
            int nBmpHeight = 55;
            Bitmap bmp = new Bitmap(nBmpWidth, nBmpHeight);

            Graphics g = Graphics.FromImage(bmp);
            g.TextRenderingHint = TextRenderingHint.AntiAlias;
            g.TextContrast = 12;

            //这里的三个属性可以根据情况开放.
            g.SmoothingMode = SmoothingMode.HighQuality;
            //g.CompositingQuality = CompositingQuality.HighQuality; 
            //g.InterpolationMode = InterpolationMode.HighQualityBicubic; 

            //g.FillRectangle(new SolidBrush(Color.Red), new Rectangle(0, 0, nBmpWidth, nBmpHeight));

            Font font;
            if (from == "wap")
            {
                font = new Font("微软雅黑", 33, FontStyle.Bold);
            }
            else
            {
                font = new Font("微软雅黑", 32, FontStyle.Bold);
            }

            PointF point = new PointF(0.0F, 0.0F);

            g.DrawString(text, font, new SolidBrush(Color.FromArgb(67, 67, 67)), 0, 0);

            g.Dispose();

            return bmp;
        }

        /// <summary>   
        /// 生成缩略图   
        /// </summary>   
        /// <param name="oldImagePath">原图路径</param>   
        /// <param name="newImagePath">缩略图路径</param>   
        /// <param name="wids">最大宽</param>   
        /// <param name="heis">最大高</param>
        public static void makeSLT(string oldImagePath, string newImagePath, int wids, int heis)
        {
            Image oimg = System.Drawing.Image.FromFile(oldImagePath);

            int nwidth = wids, nheight = heis;

            if (oimg.Width > oimg.Height)
            {
                nwidth = wids;
                nheight = (oimg.Height * nwidth) / oimg.Width;
            }
            else if (oimg.Width < oimg.Height)
            {
                nheight = heis;
                nwidth = (oimg.Width * nheight) / oimg.Height;
            }
            else
            {
                if (wids > heis)
                {
                    nheight = heis;
                    nwidth = (oimg.Width * nheight) / oimg.Height;
                }
                else
                {
                    nwidth = wids;
                    nheight = (oimg.Height * nwidth) / oimg.Width;
                }
            }

            Image nimg = oimg.GetThumbnailImage(nwidth, nheight, null, IntPtr.Zero);
            HttpContext.Current.Response.Clear();
            Bitmap outs = new Bitmap(nimg);
            //处理图像质量
            ImageCodecInfo[] codecs = ImageCodecInfo.GetImageEncoders();
            ImageCodecInfo ici = null;
            foreach (ImageCodecInfo codec in codecs)
            {
                if (codec.MimeType == "image/jpeg")
                {
                    ici = codec;
                }
            }

            EncoderParameters ep = new EncoderParameters();
            ep.Param[0] = new EncoderParameter(System.Drawing.Imaging.Encoder.Quality, 100L);

            outs.Save(newImagePath, ici, ep);

            outs.Dispose();
            nimg.Dispose();
            oimg.Dispose();
        }

        /// <summary>   
        /// 生成缩略图   
        /// </summary>   
        /// <param name="oldImagePath">原图路径</param>   
        /// <param name="newImagePath">缩略图路径</param>   
        /// <param name="wids">宽</param>   
        /// <param name="heis">高</param>
        /// <param name="proportional">等比例</param>
        public static void makeSLT(string oldImagePath, string newImagePath, int wids, int heis, bool proportional)
        {
            Image oimg = System.Drawing.Image.FromFile(oldImagePath);

            int nwidth = wids, nheight = heis;

            if (proportional)
            {
                if (oimg.Width >= oimg.Height)
                {
                    nheight = heis;
                    nwidth = (oimg.Width * nheight) / oimg.Height;
                }
                else
                {
                    nwidth = wids;
                    nheight = (oimg.Height * nwidth) / oimg.Width;
                }
            }

            Image nimg = oimg.GetThumbnailImage(nwidth, nheight, null, IntPtr.Zero);
            HttpContext.Current.Response.Clear();
            Bitmap outs = new Bitmap(nimg);
            //处理图像质量
            ImageCodecInfo[] codecs = ImageCodecInfo.GetImageEncoders();
            ImageCodecInfo ici = null;
            foreach (ImageCodecInfo codec in codecs)
            {
                if (codec.MimeType == "image/jpeg")
                {
                    ici = codec;
                }
            }

            EncoderParameters ep = new EncoderParameters();
            ep.Param[0] = new EncoderParameter(System.Drawing.Imaging.Encoder.Quality, 100L);

            outs.Save(newImagePath, ici, ep);

            outs.Dispose();
            nimg.Dispose();
            oimg.Dispose();
        }

        /// <summary>
        /// 生成缩略图
        /// </summary>
        /// <param name="oldImage">原图</param>
        /// <param name="newImagePath">缩略图路径</param>
        /// <param name="wids">宽</param>
        /// <param name="heis">高</param>
        /// <param name="proportional">等比例</param>
        public static void makeSLT(Bitmap oldImage, string newImagePath, int wids, int heis, bool proportional)
        {
            Image oimg = oldImage;

            int nwidth = wids, nheight = heis;

            if (proportional)
            {
                if (oimg.Width >= oimg.Height)
                {
                    nheight = heis;
                    nwidth = (oimg.Width * nheight) / oimg.Height;
                }
                else
                {
                    nwidth = wids;
                    nheight = (oimg.Height * nwidth) / oimg.Width;
                }
            }

            Image nimg = oimg.GetThumbnailImage(wids, heis, null, IntPtr.Zero);
            HttpContext.Current.Response.Clear();
            Bitmap outs = new Bitmap(nimg);
            //处理图像质量
            ImageCodecInfo[] codecs = ImageCodecInfo.GetImageEncoders();
            ImageCodecInfo ici = null;
            foreach (ImageCodecInfo codec in codecs)
            {
                if (codec.MimeType == "image/jpeg")
                {
                    ici = codec;
                }
            }

            EncoderParameters ep = new EncoderParameters();
            ep.Param[0] = new EncoderParameter(System.Drawing.Imaging.Encoder.Quality, 100L);
            outs.Save(newImagePath, ici, ep);

            oimg.Dispose();
        }

        /// <summary>
        /// 任意角度旋转
        /// </summary>
        /// <param name="bmp">原始图Bitmap</param>
        /// <param name="angle">旋转角度</param>
        /// <param name="bkColor">背景色</param>
        /// <returns>输出Bitmap</returns>
        public static Bitmap KiRotate(Bitmap bmp, float angle, Color bkColor)
        {
            int w = bmp.Width + 2;
            int h = bmp.Height + 2;

            PixelFormat pf;

            if (bkColor == Color.Transparent)
            {
                pf = PixelFormat.Format32bppArgb;
            }
            else
            {
                pf = bmp.PixelFormat;
            }

            Bitmap tmp = new Bitmap(w, h, pf);
            Graphics g = Graphics.FromImage(tmp);
            g.Clear(bkColor);
            g.DrawImageUnscaled(bmp, 1, 1);
            g.Dispose();

            GraphicsPath path = new GraphicsPath();
            path.AddRectangle(new RectangleF(0f, 0f, w, h));
            Matrix mtrx = new Matrix();
            mtrx.Rotate(angle);
            RectangleF rct = path.GetBounds(mtrx);

            Bitmap dst = new Bitmap((int)rct.Width, (int)rct.Height, pf);
            g = Graphics.FromImage(dst);
            g.Clear(bkColor);
            g.TranslateTransform(-rct.X, -rct.Y);
            g.RotateTransform(angle);
            g.InterpolationMode = InterpolationMode.HighQualityBilinear;
            g.DrawImageUnscaled(tmp, 0, 0);
            g.Dispose();

            tmp.Dispose();

            return dst;
        }

        /// <summary>
        /// 任意角度旋转
        /// </summary>
        /// <param name="bmp">原始图Bitmap</param>
        /// <param name="angle">旋转角度</param>
        /// <param name="bkColor">背景色</param>
        /// <returns>输出Bitmap</returns>
        public static Bitmap KiRotate(Bitmap bmp, int w, int h, float angle, Color bkColor)
        {
            PixelFormat pf;

            if (bkColor == Color.Transparent)
            {
                pf = PixelFormat.Format32bppArgb;
            }
            else
            {
                pf = bmp.PixelFormat;
            }

            Bitmap tmp = new Bitmap(w, h, pf);
            Graphics g = Graphics.FromImage(tmp);
            g.Clear(bkColor);
            g.DrawImageUnscaled(bmp, 1, 1);
            g.Dispose();

            GraphicsPath path = new GraphicsPath();
            path.AddRectangle(new RectangleF(0f, 0f, w, h));
            Matrix mtrx = new Matrix();
            mtrx.Rotate(angle);
            RectangleF rct = path.GetBounds(mtrx);

            Bitmap dst = new Bitmap((int)rct.Width, (int)rct.Height, pf);
            g = Graphics.FromImage(dst);
            g.Clear(bkColor);
            g.TranslateTransform(-rct.X, -rct.Y);
            g.RotateTransform(angle);
            g.InterpolationMode = InterpolationMode.HighQualityBilinear;
            g.DrawImageUnscaled(tmp, 0, 0);
            g.Dispose();

            tmp.Dispose();

            return dst;
        }

        /// <summary>
        /// 合并图片
        /// </summary>
        /// <param name="bitMapDic">需要合并的图片集合</param>
        /// <param name="background"></param>
        /// <returns></returns>
        public static Bitmap MergerImg(Dictionary<string, Bitmap> bitMapDic, string background)
        {
            Bitmap backgroudImg = new Bitmap(HttpContext.Current.Server.MapPath(background));
            Graphics g = Graphics.FromImage(backgroudImg);
            //g.Clear(System.Drawing.Color.White);
            int j = 0;
            foreach (KeyValuePair<string, Bitmap> entry in bitMapDic)
            {
                string xy = entry.Key;
                string[] xyArray = xy.Split(new char[] { ',' });
                Bitmap map = entry.Value;
                g.DrawImage(map, Convert.ToInt32(xyArray[0]), Convert.ToInt32(xyArray[1]), map.Width, map.Height);
                j++;
            }
            g.Dispose();
            return backgroudImg;
        }

        /// <summary>
        /// 裁切图片
        /// </summary>
        /// <param name="_oimg"></param>
        /// <param name="x"></param>
        /// <param name="y"></param>
        /// <param name="w"></param>
        /// <param name="h"></param>
        /// <returns></returns>
        public static string CropImg(string _oimg, double x, double y, double w, double h)
        {
            string result = string.Empty;

            if (x > 0)
                x = -x;
            if (y > 0)
                y = -y;

            Bitmap backgroudImg = new Bitmap((int)w, (int)h);
            Graphics g = Graphics.FromImage(backgroudImg);
            g.Clear(System.Drawing.Color.White);

            Image oimg = Image.FromFile(HttpContext.Current.Server.MapPath(_oimg));
            Bitmap map = new Bitmap(oimg);
            g.DrawImage(map, (int)x, (int)y, map.Width, map.Height);
            g.Dispose();

            //处理图像质量
            ImageCodecInfo[] codecs = ImageCodecInfo.GetImageEncoders();
            ImageCodecInfo ici = null;
            foreach (ImageCodecInfo codec in codecs)
            {
                if (codec.MimeType == "image/" + _oimg.Substring(_oimg.IndexOf(".") + 1).ToLower().Replace("jpg", "jpeg"))
                {
                    ici = codec;
                }
            }

            EncoderParameters ep = new EncoderParameters();
            ep.Param[0] = new EncoderParameter(System.Drawing.Imaging.Encoder.Quality, Convert.ToInt64(100));

            ////string filename = Guid.NewGuid().ToString("N") + ".jpg";
            //string filename = "CROP_" + _oimg.Replace("upload/", "");
            //string slt_filename = "SLT_" + _oimg.Replace("upload/", "");
            //string slt_l_filename = "SLT_L_" + _oimg.Replace("upload/", "");
            //backgroudImg.Save(HttpContext.Current.Server.MapPath("upload/") + filename, ici, ep);

            //makeSLT(backgroudImg, HttpContext.Current.Server.MapPath("upload/") + slt_filename, 174, (int)(174 * h / w), false);

            ////makeSLT(backgroudImg, HttpContext.Current.Server.MapPath("upload/") + slt_filename, 269, (int)(269 * h / w));

            //backgroudImg.Dispose();
            //oimg.Dispose();

            ////makeSLT(HttpContext.Current.Server.MapPath("upload/") + filename, HttpContext.Current.Server.MapPath("upload/") + slt_l_filename, 269, (int)(269 * h / w));
            //makeSLT(HttpContext.Current.Server.MapPath("upload/") + filename, HttpContext.Current.Server.MapPath("upload/") + slt_l_filename, (int)(364 * w / h), 364, false);

            ////System.IO.File.Delete(HttpContext.Current.Server.MapPath(_oimg));

            //result = "upload/" + filename + "," + "upload/" + slt_filename + "," + "upload/" + slt_l_filename;

            string filename = "crop" + _oimg.Replace("upload/" + DateTime.Now.ToString("yyyyMMdd") + "/", "");
            backgroudImg.Save(HttpContext.Current.Server.MapPath("upload/" + DateTime.Now.ToString("yyyyMMdd") + "/") + filename, ici, ep);

            backgroudImg.Dispose();
            oimg.Dispose();

            result = "upload/" + DateTime.Now.ToString("yyyyMMdd") + "/" + filename;

            return result;
        }

        private static ImageCodecInfo GetEncoderInfo(String mimeType)
        {
            int j;
            ImageCodecInfo[] encoders;
            encoders = ImageCodecInfo.GetImageEncoders();
            for (j = 0; j < encoders.Length; ++j)
            {
                if (encoders[j].MimeType == mimeType)
                    return encoders[j];
            }
            return null;
        }
        #endregion

        #region "合成微博分享图片"
        public string sharePic(string pic1, string pic2, string background, string text)
        {
            Bitmap _pic1, _pic2, bmp;
            _pic1 = new Bitmap(HttpContext.Current.Server.MapPath(pic1));
            _pic2 = new Bitmap(HttpContext.Current.Server.MapPath(pic2));
            //_background = new Bitmap(HttpContext.Current.Server.MapPath(background));

            Dictionary<string, Bitmap> images = new Dictionary<string, Bitmap>();

            //avatar
            images.Add("31,72", _pic1);

            //frame
            images.Add("311,72", _pic2);

            //text
            int len = text.Length;
            int rows = 1;
            if (len % 35 == 0)
            {
                rows = len / 35;
            }
            else
            {
                rows = (len / 35) + 1;
            }

            if (rows > 1)
            {
                for (int i = 0; i < rows; i++)
                {
                    if (rows - i > 1)
                    {
                        images.Add("31," + (250 + (25 * i)), creatStrImg(text.Substring((i * 35), 35)));
                    }
                    else
                    {
                        images.Add("31," + (250 + (25 * i)), creatStrImg(text.Substring((i * 35))));
                    }
                }
            }
            else
            {
                images.Add("31,250", creatStrImg(text));            
            }

            bmp = MergerImg(images, background);

            //处理图像质量
            EncoderParameters ep = new EncoderParameters();
            ep.Param[0] = new EncoderParameter(System.Drawing.Imaging.Encoder.Quality, 100L);

            string dir = "upload/share_pic/" + DateTime.Now.ToString("yyyyMMdd");

            if (!Directory.Exists(HttpContext.Current.Server.MapPath(dir)))
            {
                Directory.CreateDirectory(HttpContext.Current.Server.MapPath(dir));
            }

            string sharePic = dir + "/" + Guid.NewGuid().ToString() + ".jpg";

            bmp.Save(HttpContext.Current.Server.MapPath(sharePic), GetEncoderInfo("image/png"), ep);

            bmp.Dispose();

            _pic1.Dispose();
            _pic2.Dispose();

            return sharePic;
        }
        #endregion
    }
}
