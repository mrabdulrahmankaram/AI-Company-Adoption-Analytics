create database project1;
use project1;

-- Which industries benefit most from AI?
select industry, avg_ai_adoption_rate
from ai_industry_summary
order by avg_productivity_change_percent desc;

-- Does AI adoption affect productivity?
select ai_adoption_rate, productivity_change_percent
from ai_company_adoption;

-- Does AI adoption affect revenue growth?
select ai_adoption_rate, revenue_growth_percent
from ai_company_adoption;

-- Does AI investment affect AI adoption?
select ai_budget_percentage, ai_adoption_rate
from ai_company_adoption
order by ai_adoption_rate desc;

-- Does AI adoption affect jobs created and jobs displaced?
select ai_adoption_rate, jobs_created, jobs_displaced
from ai_company_adoption
order by ai_adoption_rate desc;

-- Which industries create more jobs than they displace?
select industry, avg_jobs_created, avg_jobs_displaced
    ,(avg_jobs_created - avg_jobs_displaced) as net_jobs
from ai_industry_summary
order by net_jobs desc;

-- Does GDP per capita relate to digital maturity?
select digital_maturity_index, gdp_per_capita
from country_ai_index;