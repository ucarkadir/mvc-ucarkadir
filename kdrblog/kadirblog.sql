
-- sayfaları gösterir
select * from tPage 

where Code='PG'


-- blog içeriklerini gösterir
select * from tPage where IDPage = 2
select * from tCat where IDCat = 0
select * from tContent where IDContent = 1

select * from tPageImg inner join tImg on tImg.IDImg=tPageImg.IDImg where IDPage = 2

select tTag.* from tPageTag inner join tTag on tTag.IDTag = tPageTag.IDTag where IDPage = 2

------------------------------------------------------------------------

declare @PageUrl nvarchar(255) = 'my-first-text';
declare @IDPage int = 0;

select @IDPage= IDPage from tPage where Url = @PageUrl;

print @IDPage;

select 
	tPage.IDPage as IDPage,
	tPage.IDCat as IDCat,
	tPage.IDContent as IDContent,
	tPage.Url as PageUrl,	
	tPage.Name as PageName,
	tPage.ShortName as PageShortName,
	tPage.PageDate as PageDate,
	tPage.Text as PageText,
	tPage.ShortText as ShortText,
	tPage.NumberOfUse as PageNumberOfUse,
	tCat.Name as CatName,
	tContent.Header as ContentHeader,
	tContent.HeaderSub as ContentHeaderSub,
	tContent.Text as ContentText
from tPage (nolock)
inner join tCat (nolock) on tCat.IDCat = tPage.IDCat
inner join tContent (nolock) on tContent.IDContent = tPage.IDContent
where tPage.Url = @PageUrl 
	and tPage.Status = 1

select 
	 tTag.IDTag as IDTage,
	 tTag.Name as TagName	 
from tPage (nolock)
inner join tPageTag (nolock) on tPageTag.IDPage = tPage.IDPage
inner join tTag (nolock) on tTag.IDTag = tPageTag.IDTag
where tPage.IDPage = @IDPage
order by OrderNo;

select 
	 tImg.IDImg as IDImg,
	 tImg.FileName as ImgFileName	 	 
from tPage (nolock)
inner join tPageImg (nolock) on tPageImg.IDPage = tPage.IDPage
inner join tImg (nolock) on tImg.IDImg = tPageImg.IDImg
where tPage.IDPage = @IDPage
order by OrderNo;

