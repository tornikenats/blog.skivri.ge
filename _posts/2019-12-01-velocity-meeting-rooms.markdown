---
layout: post
title:  "To Berlin, or not to Berlin, that is the question."
date:   2019-12-01 22:35:03 -0400
categories: analytics
---

<center><sup>Note: The data used for the commentary below was gathered on December 1st, 2019</sup></center>

What better way to get a break from the hard slog in the startup world than to take a short break with a fun little exercise.

There's a few things that remind me that I'm a very analytical person, but the following is one of them. When others think, "that's a beautiful espresso machine", I think, "how many espresso shots this machine made in its life?" Most of the time I can't really answer these types of curiosities – but this time I can. A few weeks ago, when I was trying to book a room, I thought to myself, "I love meeting in Berlin, I wonder if others do too." So I proceeded to jot down in my notebook, "meeting room analytics", hoping to get to it one day. That same weekend, the analytical bug came back and in no time I was looking up how to access Google Calendar APIs. Thanks to the power of the internet, I found a wonderful blog post covering [exactly what I needed](https://qxf2.com/blog/google-calendar-python/). This article is so great in fact, that I was able to gather all the data I needed in the next hour! If you're interested in APIs for Google Calendar, I strongly suggest you take a look.

I now had the data, the next challenge was: Presentation. How can I present this data in the best way possible for the reader to digest it easily? I'm a big fan of the presentation style of [fivethirtyeight.com](fivethirtyeight.com), I took inspiration from their charting style. Unfortunately, I wasn't able to maintain the esthetic throughout this post – I'll blame it on the lack of design skills. 

## My favorite room

I like Berlin the most (excluding temperature control issues), so I wanted to know how often people chose to book it. Here's the first chart I generated with the data:

<!-- number of meetings in berlin by month [bar chart] -->
![Month by month meetings in Berlin](/assets/meeting_rooms/meetings_in_berlin.svg)

The first thing that caught my eye was the dramatic increase in meetings from May of 2019. I'm guessing this is when the calendar started to be fully utilized. After June, 2019, you can see the stabilization of meetings booked at between 75 and 100 meetings per month. Unfortunately, we won't be able to crown July as the busiest month of the year but we can for the period between June and December.

## Velocity's favorite room

Then I began to think larger, and tried to find what are Velocites' favorite meeting rooms. It is debatable how accurate this is given that a large part of deciding which room to book is about the amount of people it will seat. So take the following with a grain of salt:

<!-- all-time meeting comparison [pie chart] -->
![Comparing rooms for all meetings booked in 2019](/assets/meeting_rooms/meetings_all_2019.svg)

We notice here that there are two supreme rooms, one for large meetings, and one for small. The Watering Hole takes the large with 14 person capacity and Berlin takes the small with 6 person capacity.

## Why is this meeting taking so long?

I remember being told that students loose attentiveness 10-15 minutes into a lecture. Although a meeting attendees are not as passive as students, it makes sense that it is harder to keep a conversation focused for a long period of time. So I was really curious how long the average meeting took at Velocity.

<!-- the average length of a meeting [scatter chart] -->
<a href="/assets/meeting_rooms/meeting_length_2019.png" target="_blank">
    <img src="/assets/meeting_rooms/meeting_length_2019.png"/>
</a>

<center><sup>This is a large image, so try to open it in a separate tab to enlarge it.</sup></center>

One interesting potential correlation that is evident from this chart is the relationship between the capacity of the room and the average length of the meeting. Across all rooms, on average, all meetings take around one hour. There are two exceptions: Matrix, which averages two hours and Atlas which averages 1.5 hours.

## Meeting room mafiosi

I also wanted to know who books the most rooms. These numbers aren't by any means accurate but they're interesting nonetheless. One note to consider is that some companies share the Google account they use to book meeting rooms (my company for example) so these accounts will have inflated numbers.

<!-- descending list of top emails that have booked berlin [bar chart] -->
![Users booking watering hole](/assets/meeting_rooms/users_booking_2019.png)

<a href="https://www.youtube.com/watch?v=ivCo9UN_9jo" target="_blank">Do we even know, who is this, velocity@uwaterloo.ca person or website?</a> Other than that, we see the usuals.

## I can't meet at 8am, but I'm free at 7am

The last statistic I wanted to see is what the busiest hour and busiest day is for meetings across all meeting rooms. To present this, the chart is a heatmap with aggregates on the right and bottom. Yellow shows the lowest number while dark blue is the highest. This chart includes data from all time, including recurring events in the future.

<!-- busiest day of the week [] -->
<a href="/assets/meeting_rooms/weekday_vs_hour.png" target="_blank">
    <img src="/assets/meeting_rooms/weekday_vs_hour.png"/>
</a>
<center><sup>This is a large image, so try to open it in a separate tab to enlarge it.</sup></center>

A few interesting findings:

1. No one likes to meet during lunch
2. People book meetings on weekends :D
3. Good luck booking at Monday at 9am
4. People prefer to meet at 7am than at 8am

That's it for my analytical adventures as of today! Let me know if you're interested in the data set or any code generating the graphs. To generate the visuals, I have used Google Graphs, PyPlot and Seaborn.