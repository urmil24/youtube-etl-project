use youtube_db;

select * from trending_videos limit 10;

-- Find duplicate titles (data quality check)
select title,count(*) as count
from trending_videos
group by title
having count>1;

-- Highest View Category
select category,sum(views) as total_views
from trending_videos
group by category
order by total_views desc
limit 1;

-- Top 3 Channels by Views
select channel,sum(views) as total_views
from trending_videos
group by channel
order by total_views desc
limit 3;

-- Views vs Likes Relationship
select views ,likes
from trending_videos;

-- Top 3 Engagement Category
select category,avg(likes/views) as avg_eng
from trending_videos
group by category
order by avg_eng desc
limit 3;

-- High Views but Low Likes video and its category 
select title,views,likes,category
from trending_videos
WHERE views > 300000 AND likes < 5000
order by views desc;

-- Views Trend Over Time
select date(publish_date) as date,sum(views) as total_views
from trending_videos
group by date
order by date;

-- Highest View Day
select date(publish_date) as date,sum(views) as total_views
from trending_videos
group by date
order by total_views desc;

-- Video with Highest Engagement
select title,(views/likes) as engagement 
from trending_videos
order by engagement desc
limit 1;

-- Avg Engagement per Category
select category,ROUND(avg(views/likes),2) as avg_eng
from trending_videos
group by category
order by avg_eng desc;

-- Channels Appearing Most Often
select channel,count(*) as video_count
from trending_videos
group by channel
order by video_count desc
limit 1;

-- View Segmentation
select 
case 
   when views<100000 then 'low'
   when views between 100000 and 1000000 then 'medium'
   else 'high'
   end as view_group,
count(*) as total_videos 
from trending_videos 
group by view_group;

-- Top 5 Contribution %
select title,views,
round((Views/(select sum(views) from trending_videos))*100,2) as conttribution_percentage
from trending_videos
order by views desc
limit 5 ;

-- Category Performance Overview
select category,
sum(likes) as total_like,
sum(views) as total_views,
avg(views/likes) as avg_enagement
from trending_videos
group by category
order by avg_enagement desc;

-- Rank Videos by Views(top 5 rank)
select title,views,
rank() over(order by views desc) as rank_position
from trending_videos
limit 5;
