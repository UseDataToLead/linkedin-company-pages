with page_statistic_by_industry as (

    select *
    from {{ ref('page_statistic_by_industry') }}

),

industry as (

    select *
    from {{ ref('industry') }}
    where is_most_recent_record = true

),



joined_page_statistic_by_industry as (

    select
industry.name,			
page_statistic_by_industry.about_page_views,					
page_statistic_by_industry.all_desktop_page_views,					
page_statistic_by_industry.all_mobile_page_views,					
page_statistic_by_industry.all_page_views,						
page_statistic_by_industry.careers_page_views,						
page_statistic_by_industry.desktop_about_page_views,						
page_statistic_by_industry.desktop_careers_page_views,					
page_statistic_by_industry.desktop_insights_page_views,				
page_statistic_by_industry.desktop_jobs_page_views,		
page_statistic_by_industry.desktop_life_at_page_views,				
page_statistic_by_industry.desktop_overview_page_views,					
page_statistic_by_industry.desktop_people_page_views,				
page_statistic_by_industry.desktop_products_page_views,					
page_statistic_by_industry.industry_id,
page_statistic_by_industry.insights_page_views,				
page_statistic_by_industry.jobs_page_views,			
page_statistic_by_industry.life_at_page_views,				
page_statistic_by_industry.mobile_about_page_views,				
page_statistic_by_industry.mobile_careers_page_views,					
page_statistic_by_industry.mobile_insights_page_views,				
page_statistic_by_industry.mobile_jobs_page_views,				
page_statistic_by_industry.mobile_life_at_page_views,			
page_statistic_by_industry.mobile_overview_page_views,					
page_statistic_by_industry.mobile_people_page_views,					
page_statistic_by_industry.mobile_products_page_views,				
page_statistic_by_industry.overview_page_views,					
page_statistic_by_industry.people_page_views,					
page_statistic_by_industry.products_page_views
    from page_statistic_by_industry
    left join industry
        on industry.id = page_statistic_by_industry.industry_id

)

select *
from joined_page_statistic_by_industry
