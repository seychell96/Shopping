USE [Shopping]
GO
/****** Object:  Table [dbo].[administrator]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[administrator](
	[adminid] [int] IDENTITY(1,1) NOT NULL,
	[adminname] [varchar](20) NULL,
	[adminpassword] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[adminid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dingdan]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dingdan](
	[dingdanid] [int] IDENTITY(1000,1) NOT NULL,
	[useradmin] [varchar](20) NULL,
	[shangpingid] [int] NULL,
	[quantity] [int] NULL,
	[totalprice] [decimal](12, 2) NULL,
	[username] [varchar](20) NULL,
	[usertelphone] [varchar](15) NULL,
	[useraddress] [varchar](50) NULL,
	[dingdanbeizhu] [varchar](50) NULL,
	[dingdanshenhe] [char](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[dingdanid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fenlei]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fenlei](
	[fenleiid] [int] IDENTITY(1,1) NOT NULL,
	[fenleiname] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[fenleiid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gongyingshang]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gongyingshang](
	[gysID] [int] IDENTITY(1000,1) NOT NULL,
	[gysname] [varchar](50) NULL,
	[gyslinkman] [varchar](10) NULL,
	[telephone] [varchar](20) NULL,
	[email] [varchar](30) NULL,
	[address] [varchar](80) NULL,
PRIMARY KEY CLUSTERED 
(
	[gysID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[leibie]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[leibie](
	[leibieid] [int] IDENTITY(1,1) NOT NULL,
	[leibiename] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[leibieid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shangping]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shangping](
	[shangpingid] [int] IDENTITY(1,1) NOT NULL,
	[shangpingname] [varchar](40) NULL,
	[spec] [varchar](20) NULL,
	[shangpingpingpai] [varchar](20) NULL,
	[quantity] [int] NULL,
	[price] [decimal](12, 2) NULL,
	[totalprice]  AS ([quantity]*[price]),
	[chushouprice] [decimal](12, 2) NULL,
	[leibieid] [int] NULL,
	[fenleiid] [int] NULL,
	[gysname] [varchar](50) NULL,
	[pic] [varchar](50) NULL,
	[beizhu] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[shangpingid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[userliuyanban]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userliuyanban](
	[lybid] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](30) NULL,
	[useremail] [varchar](30) NULL,
	[lybcontent] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[lybid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[userid] [int] IDENTITY(1,1) NOT NULL,
	[useradmin] [varchar](20) NULL,
	[userpassword] [varchar](40) NULL,
	[username] [varchar](20) NULL,
	[useremail] [varchar](30) NULL,
	[usershengfen] [varchar](20) NULL,
	[usertelphone] [varchar](15) NULL,
	[usershouji] [varchar](15) NULL,
	[useraddress] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[dingdan] ADD  DEFAULT ((0)) FOR [dingdanshenhe]
GO
/****** Object:  StoredProcedure [dbo].[admin_add]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[admin_add]
	@admin varchar(20),
	@adminname varchar(20),
	@adminpassword varchar(40)	
as 
	if @admin='nzx'
	begin
		if not exists(select adminname from administrator where adminname=@adminname)
		begin	
			insert into administrator(adminname,adminpassword)values(@adminname,@adminpassword)
			return 1
		end
		else
			return 2
			
	end

GO
/****** Object:  StoredProcedure [dbo].[admin_del]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[admin_del]
	@adminid int,
	@admin varchar(20),
	@adminname varchar(20)
as
	if @admin='nzx'
	delete administrator where adminid=@adminid and adminname !='nzx'

GO
/****** Object:  StoredProcedure [dbo].[admin_denlu]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--超级管理员为nzx
--密码解密为19821028
--管理员为a
--密码解密为a


create proc [dbo].[admin_denlu]
	@adminname varchar(20),
	@adminpassword varchar(40)
as
	select adminid from administrator where adminname = @adminname and adminpassword= @adminpassword	

GO
/****** Object:  StoredProcedure [dbo].[admin_select]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[admin_select]
as
	select * from administrator

GO
/****** Object:  StoredProcedure [dbo].[admin_update]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[admin_update]
	@adminname varchar(20),	--用户名
	@adminpassword varchar(40) --用户密码	
as
	update administrator set adminpassword = @adminpassword where adminname=@adminname

GO
/****** Object:  StoredProcedure [dbo].[clu3d_sel]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[clu3d_sel]
as	
	select top 5 * from clu3dtype order by cluid desc

GO
/****** Object:  StoredProcedure [dbo].[clu3d_select]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[clu3d_select]
	@cluid int
as
	select clupath from clu3dtype where cluid =@cluid

GO
/****** Object:  StoredProcedure [dbo].[dingdan_add]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc  [dbo].[dingdan_add]
(
	@useradmin varchar(20),
	@shangpingid int,
	@quantity int,	
	@totalprice decimal(12,2),
	@username varchar(20),
	@usertelphone varchar(15),
	@useraddress varchar(50),
	@dingdanbeizhu varchar(50)	
)
as
	insert into dingdan(useradmin,shangpingid,quantity,totalprice,username,usertelphone,useraddress,dingdanbeizhu)
	values(@useradmin,@shangpingid,@quantity,@totalprice,@username,@usertelphone,@useraddress,@dingdanbeizhu)

GO
/****** Object:  StoredProcedure [dbo].[dingdan_del]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[dingdan_del]
	@dingdanid int
as
	delete dingdan where  dingdanid=@dingdanid

GO
/****** Object:  StoredProcedure [dbo].[dingdan_sel]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[dingdan_sel]
as
	select dingdanid,useradmin,shangpingid,quantity,totalprice from dingdan where dingdanshenhe!=0


GO
/****** Object:  StoredProcedure [dbo].[dingdan_sh_sel]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[dingdan_sh_sel]
as
	select * from dingdan where dingdanshenhe =0

GO
/****** Object:  StoredProcedure [dbo].[dingdan_update]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[dingdan_update]	
	@dingdanid int,
	@shangpingid int,
	@quantity int	
as
	if (select quantity from shangping where shangpingid = @shangpingid)>@quantity
	begin
		begin tran		
			update dingdan set dingdanshenhe = '1' where dingdanid=@dingdanid
			if @@error!=0			
			begin
				rollback tran
				return					
			end
			update shangping set quantity = quantity- @quantity where shangpingid = @shangpingid
			if @@error!=0			
			begin
				rollback tran
				return					
			end
		commit tran		
	end
	

GO
/****** Object:  StoredProcedure [dbo].[fenlei_sel]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[fenlei_sel]
as
	select * from fenlei 

GO
/****** Object:  StoredProcedure [dbo].[gongyingshang_del]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--删除
create proc [dbo].[gongyingshang_del]
	@gysID int
as
	delete gongyingshang where gysID = @gysID

GO
/****** Object:  StoredProcedure [dbo].[gongyingshang_gysname]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--显示所有的供应商名
create proc [dbo].[gongyingshang_gysname]
as
	select gysname from gongyingshang

GO
/****** Object:  StoredProcedure [dbo].[gongyingshang_insert]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--插入
create proc [dbo].[gongyingshang_insert]
	@gysname varchar(50),
	@gyslinkman varchar(10),
	@telephone varchar(20),
	@email varchar(30),
	@address varchar(80)
as 
	insert into gongyingshang(gysname,gyslinkman,telephone,email,address) 
	values(@gysname,@gyslinkman,@telephone,@email,@address)

GO
/****** Object:  StoredProcedure [dbo].[gongyingshang_modif]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--修改
create proc [dbo].[gongyingshang_modif]
	@gysID	int,
	@gysname varchar(50),
	@gyslinkman varchar(10),
	@telephone varchar(20),
	@email varchar(30),
	@address varchar(80)
as
	update gongyingshang set gysname=@gysname,gyslinkman = @gyslinkman,telephone =@telephone,email= @email,address=@address	
	where gysID=@gysID

GO
/****** Object:  StoredProcedure [dbo].[gongyingshang_seek]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--查找
create proc [dbo].[gongyingshang_seek]
	@name varchar(50)
as
	select * from gongyingshang where gysname like '%'+@name+'%'

GO
/****** Object:  StoredProcedure [dbo].[gongyingshang_select]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--显示
create proc [dbo].[gongyingshang_select]
as
	select * from gongyingshang

GO
/****** Object:  StoredProcedure [dbo].[leibie_add]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[leibie_add]
	@leibiename varchar(20)
as
	insert into leibie(leibiename) values(@leibiename)

GO
/****** Object:  StoredProcedure [dbo].[leibie_del]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[leibie_del]
	@leibieid int
as
	if not exists(select shangpingid from shangping where leibieid = @leibieid)
	delete leibie where leibieid = @leibieid

GO
/****** Object:  StoredProcedure [dbo].[leibie_name]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[leibie_name]
	@leibieid int
as
	select leibiename from leibie where leibieid = @leibieid

GO
/****** Object:  StoredProcedure [dbo].[leibie_sel]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[leibie_sel]
as
	select * from leibie

GO
/****** Object:  StoredProcedure [dbo].[shangping_add]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[shangping_add]
(	
	@shangpingname varchar(40),	--商品名字
	@spec varchar(20),	--产品规格
	@shangpingpingpai varchar(20),	--商品品牌
	@quantity int,		--库存数量	
	@price decimal(12,2),	--商品价格	
	@chushouprice decimal(12,2),   --出售价格
	@leibieid int,		--类别
	@fenleiid int,		--网站分类
	@gysname varchar(50),	--供应商名	
	@pic varchar(50),	--商品图片
	@beizhu	varchar(100)	--商品说明	
)
as
	if exists(select shangpingid from shangping where shangpingname=@shangpingname and spec = @spec)
	begin 
		update shangping set quantity = quantity+@quantity where shangpingname=@shangpingname and spec = @spec
	end
	else
	begin
		insert into shangping(shangpingname,spec,shangpingpingpai,quantity,price,chushouprice,leibieid,fenleiid,gysname,pic,beizhu)
		values(@shangpingname,@spec,@shangpingpingpai,@quantity,@price,@chushouprice,@leibieid,@fenleiid,@gysname,@pic,@beizhu)
	end

GO
/****** Object:  StoredProcedure [dbo].[shangping_count]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[shangping_count]
	@count int
as
	select count(*) from shangping where  fenleiid =@count

GO
/****** Object:  StoredProcedure [dbo].[shangping_del]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[shangping_del]
	@shangpingid int
as
	delete shangping where shangpingid = @shangpingid 

GO
/****** Object:  StoredProcedure [dbo].[shangping_leibie_all]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[shangping_leibie_all]
	@leibieid int
as
	select shangpingid,shangpingname,chushouprice,pic from shangping where leibieid = @leibieid
	order by shangpingid desc	

GO
/****** Object:  StoredProcedure [dbo].[shangping_leibie_count]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[shangping_leibie_count]
	@leibieid int
as
	select count(*) from shangping where leibieid = @leibieid

GO
/****** Object:  StoredProcedure [dbo].[shangping_rm_all]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



create proc [dbo].[shangping_rm_all]
as
	select shangpingid,shangpingname,chushouprice,pic from shangping where fenleiid = 1
	order by shangpingid desc
	

GO
/****** Object:  StoredProcedure [dbo].[shangping_sel]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	

create  proc [dbo].[shangping_sel]
as
	select a.*,b.leibiename,c.fenleiname
	from shangping a,leibie b,fenlei c where a.leibieid = b.leibieid and c.fenleiid = a.fenleiid

GO
/****** Object:  StoredProcedure [dbo].[shangping_tj_4]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[shangping_tj_4]
as
	select top 4 shangpingid,shangpingname,chushouprice,pic from shangping where fenleiid = 3
	order by shangpingid desc
	

GO
/****** Object:  StoredProcedure [dbo].[shangping_tj_all]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[shangping_tj_all]
as
	select shangpingid,shangpingname,chushouprice,pic from shangping where fenleiid = 3
	order by shangpingid desc
	

GO
/****** Object:  StoredProcedure [dbo].[shangping_tt_4]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[shangping_tt_4]
as
	select top 4 shangpingid,shangpingname,chushouprice,pic from shangping where fenleiid = 4
	order by shangpingid desc
	

GO
/****** Object:  StoredProcedure [dbo].[shangping_tt_all]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[shangping_tt_all]
as
	select shangpingid,shangpingname,chushouprice,pic from shangping where fenleiid = 4
	order by shangpingid desc	

GO
/****** Object:  StoredProcedure [dbo].[shangping_update]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[shangping_update]
	@shangpingid int,
	@shangpingname varchar(40),	--商品名字
	@spec varchar(20),	--产品规格
	@shangpingpingpai varchar(20),	--商品品牌
	@price decimal(12,2),	--商品价格	
	@chushouprice decimal(12,2),   --出售价格
	@leibieid int,		--类别
	@fenleiid int,		--网站分类
	@gysname varchar(50),	--供应商名	
	@pic varchar(50),	--商品图片
	@beizhu	varchar(100)	--商品说明	
as
	update shangping set  shangpingname =@shangpingname,spec=@spec,shangpingpingpai =@shangpingpingpai,
	price = @price,chushouprice =@chushouprice,leibieid =@leibieid,fenleiid =@fenleiid,gysname =@gysname,pic =@pic,beizhu =@beizhu
	where shangpingid = @shangpingid

GO
/****** Object:  StoredProcedure [dbo].[shangping_xingxi]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[shangping_xingxi]
(
	@shangpingid int
)
as
	select a.*,b.leibiename
	from shangping a,leibie b where a.leibieid = b.leibieid and a.shangpingid = @shangpingid

GO
/****** Object:  StoredProcedure [dbo].[shangping_zx_4]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[shangping_zx_4]
as
	select top 4 shangpingid,shangpingname,chushouprice,pic from shangping where fenleiid = 2
	order by shangpingid desc
	

GO
/****** Object:  StoredProcedure [dbo].[shangping_zx_all]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[shangping_zx_all]
as
	select shangpingid,shangpingname,chushouprice,pic from shangping where fenleiid = 2
	order by shangpingid desc
	

GO
/****** Object:  StoredProcedure [dbo].[userliuyanban_add]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[userliuyanban_add]
(
	@username varchar(30),
	@useremail varchar(30),
	@lybcontent ntext
)
as
	insert into userliuyanban(username,useremail,lybcontent) values(@username,@useremail,@lybcontent)

GO
/****** Object:  StoredProcedure [dbo].[userliuyanban_del]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[userliuyanban_del]
(
	@lybid int 
)
as
	delete userliuyanban where lybid = @lybid

GO
/****** Object:  StoredProcedure [dbo].[userliuyanban_lybcontent]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	
create proc [dbo].[userliuyanban_lybcontent]
	@lybid int
as
	select lybcontent from userliuyanban where lybid= @lybid

GO
/****** Object:  StoredProcedure [dbo].[userliuyanban_sel]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	
create proc [dbo].[userliuyanban_sel]	
as
	select lybid,username,useremail from userliuyanban 

GO
/****** Object:  StoredProcedure [dbo].[userliuyanban_sel_top10]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	
create proc [dbo].[userliuyanban_sel_top10]
as
	select top 10 * from userliuyanban
	order by lybid desc

GO
/****** Object:  StoredProcedure [dbo].[users_add]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




create proc [dbo].[users_add]
(
	@useradmin varchar(20),		--用户名
	@userpassword varchar(40),       --用户密码
	@username varchar(20),		--用户真实姓名
	@useremail varchar(30),		--email
	@usershengfen varchar(20),	--身份证
	@usertelphone varchar(15),	--电话
	@usershouji varchar(15),		--手机
	@useraddress varchar(50)		--地址
)
as
	if not exists(select userid from users where useradmin = @useradmin)
	insert into users(useradmin,userpassword,username,useremail,usershengfen,usertelphone,usershouji,useraddress)
	values(@useradmin,@userpassword,@username,@useremail,@usershengfen,@usertelphone,@usershouji,@useraddress)

GO
/****** Object:  StoredProcedure [dbo].[users_del]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



create proc [dbo].[users_del]
	@userid int
as
	delete users where userid = @userid

GO
/****** Object:  StoredProcedure [dbo].[users_denlu]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[users_denlu]
	@useradmin varchar(20),
	@userpassword varchar(40)
as
	select userid from users where useradmin = @useradmin and userpassword = @userpassword

GO
/****** Object:  StoredProcedure [dbo].[users_sel]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[users_sel]
as
	select * from users

GO
/****** Object:  StoredProcedure [dbo].[users_update]    Script Date: 2019/6/2 14:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[users_update]
(
	@useradmin varchar(20),
	@userpassword varchar(40),   
	@newpassword varchar(40)
)
as
	if exists (select * from users where useradmin = @useradmin and userpassword = @userpassword)
		update users set userpassword = @newpassword	where useradmin=@useradmin

GO
