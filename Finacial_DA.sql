select (sum(Profit)) as Most_Profit,[Month Name],Year from Financial_Report group by Year,[Month Name]; 


create procedure Sp_MostProfitable_Month_year
as begin
select top 1 max(Most_Profit) as [Most Profit],[Month Name],Year
from (select (sum(Profit)) as Most_Profit,[Month Name],Year from Financial_Report group by Year,[Month Name]) result group by
[Month Name],Year order by [Most Profit] desc;
end

create view Vw_Fin_Report as
select F.Segment,F.Country,F.Product,F.Profit,F.Year  from Financial_Report F



select F.Segment,F.Product,F.Profit,F.Year,F.[Month Name]  from Financial_Report F