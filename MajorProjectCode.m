% Name:Akarshan Kakkar            York ID: 218458687

close all;
load majorprojectdataimport;

nanvaluesPM25=isnan(Data.PM25);
nanvaluesO3=isnan(Data.O3);
nanvaluesBenzene=isnan(Data.Benzene);
qPM25=1:numel(Data.PM25);
qO3=1:numel(Data.O3);
qBenzene=1:numel(Data.Benzene);
Data.PM25(isnan(Data.PM25))=interp1(qPM25(~nanvaluesPM25),Data.PM25(~nanvaluesPM25),qPM25(nanvaluesPM25));
Data.O3(isnan(Data.O3))=interp1(qO3(~nanvaluesO3),Data.O3(~nanvaluesO3),qO3(nanvaluesO3));
Data.Benzene(isnan(Data.Benzene))=interp1(qBenzene(~nanvaluesBenzene),Data.Benzene(~nanvaluesBenzene),qBenzene(nanvaluesBenzene));

annual=table2timetable(Data);
v=retime(annual,'daily','mean');

figure(1);
subplot(2,2,1)
sgtitle("Annual Data");
plot(v.Date,v.PM25,'r-');
title("Annual Data of PM25 concentration");
ylabel(" PM 25 µg/m3");

subplot(2,2,2)
plot(v.Date,v.O3,'r-');
title("Annual Data of O3 concentration");
ylabel(" O3 ppb");


subplot(2,2,3)
plot(v.Date,v.Benzene,'r-');
title("Annual Data of Benzene concentration");
ylabel("Benzene ppb");



January = timerange(datetime('01 Jan 2019','InputFormat','dd MMM yyyy'), datetime('31 Jan 2019','InputFormat','dd MMM yyyy'),'months');
Jan = v(January,:);

February = timerange(datetime('01 Feb 2019','InputFormat','dd MMM yyyy'), datetime('28 Feb 2019','InputFormat','dd MMM yyyy'),'months');
Feb = v(February,:);

March = timerange(datetime('01 Mar 2019','InputFormat','dd MMM yyyy'), datetime('31 Mar 2019','InputFormat','dd MMM yyyy'),'months');
Mar = v(March,:);

April = timerange(datetime('01 Apr 2019','InputFormat','dd MMM yyyy'), datetime('30 Apr 2019','InputFormat','dd MMM yyyy'),'months');
Apr = v(April,:);

May_ = timerange(datetime('01 May 2019','InputFormat','dd MMM yyyy'), datetime('31 May 2019','InputFormat','dd MMM yyyy'),'months');
May = v(May_,:);

June = timerange(datetime('01 Jun 2019','InputFormat','dd MMM yyyy'), datetime('30 Jun 2019','InputFormat','dd MMM yyyy'),'months');
Jun = v(June,:);

July = timerange(datetime('01 Jul 2019','InputFormat','dd MMM yyyy'), datetime('30 Jul 2019','InputFormat','dd MMM yyyy'),'months');
Jul = v(July,:);

August = timerange(datetime('01 Aug 2019','InputFormat','dd MMM yyyy'), datetime('31 Aug 2019','InputFormat','dd MMM yyyy'),'months');
Aug = v(August,:);

September = timerange(datetime('01 Sep 2019','InputFormat','dd MMM yyyy'), datetime('30 Sep 2019','InputFormat','dd MMM yyyy'),'months');
Sep = v(September,:);

October = timerange(datetime('01 Oct 2019','InputFormat','dd MMM yyyy'), datetime('31 Oct 2019','InputFormat','dd MMM yyyy'),'months');
Oct = v(October,:);

November = timerange(datetime('01 Nov 2019','InputFormat','dd MMM yyyy'), datetime('30 Nov 2019','InputFormat','dd MMM yyyy'),'months');
Nov = v(November,:);

December = timerange(datetime('01 Dec 2019','InputFormat','dd MMM yyyy'), datetime('31 Dec 2019','InputFormat','dd MMM yyyy'),'months');
Dec = v(December,:);


figure(2);
subplot(3,4,1);
sgtitle("Monthly Data of PM25");
plot(Jan.Date,Jan.PM25,'g');
title("January Data of PM25 concentration");
ylabel(" PM 25 µg/m3");

subplot(3,4,2);
plot(Feb.Date,Feb.PM25,'g');
title("February Data of PM25 concentration");
ylabel(" PM 25 µg/m3");

subplot(3,4,3);
plot(Mar.Date,Mar.PM25,'g');
title("March Data of PM25 concentration");
ylabel(" PM 25 µg/m3");

subplot(3,4,4);
plot(Apr.Date,Apr.PM25,'g ');
title("April Data of PM25 concentration");
ylabel(" PM 25 µg/m3");

subplot(3,4,5);
plot(May.Date,May.PM25,'g ');
title("May Data of PM25 concentration");
ylabel(" PM 25 µg/m3");

subplot(3,4,6);
plot(Jun.Date,Jun.PM25,'g ');
title("June Data of PM25 concentration");
ylabel(" PM 25 µg/m3");


subplot(3,4,7);
plot(Jul.Date,Jul.PM25,'g ');
title("July Data of PM25 concentration");
ylabel(" PM 25 µg/m3");

subplot(3,4,8);
plot(Aug.Date,Aug.PM25,'g ');
title("August Data of PM25 concentration");
ylabel(" PM 25 µg/m3");

subplot(3,4,9);
plot(Sep.Date,Sep.PM25,'g ');
title("September Data of PM25 concentration");
ylabel(" PM 25 µg/m3");

subplot(3,4,10);
plot(Oct.Date,Oct.PM25,'g ');
title("October Data of PM25 concentration");
ylabel(" PM 25 µg/m3");

subplot(3,4,11);
plot(Nov.Date,Nov.PM25,'g ');
title("November Data of PM25 concentration");
ylabel(" PM 25 µg/m3");

subplot(3,4,12);
plot(Dec.Date,Dec.PM25,'g ');
title("December Data of PM25 concentration");
ylabel(" PM 25 µg/m3");


figure(3);

subplot(3,4,1);
sgtitle("Monthly Data of O3");
plot(Jan.Date,Jan.O3);
title("January Data of O3 concentration");
ylabel(" O3 ppb");

subplot(3,4,2);
plot(Feb.Date,Feb.O3);
title("February Data of O3 concentration");
ylabel(" O3 ppb");

subplot(3,4,3);
plot(Mar.Date,Mar.O3);
title("March Data of O3 concentration");
ylabel(" O3 ppb");

subplot(3,4,4);
plot(Apr.Date,Apr.O3);
title("April Data of O3 concentration");
ylabel(" O3 ppb");

subplot(3,4,5);
plot(May.Date,May.O3);
title("May Data of O3 concentration");
ylabel(" O3 ppb");

subplot(3,4,6);
plot(Jun.Date,Jun.O3);
title("June Data of O3 concentration");
ylabel(" O3 ppb");


subplot(3,4,7);
plot(Jul.Date,Jul.O3);
title("July Data of O3 concentration");
ylabel(" O3 ppb");

subplot(3,4,8);
plot(Aug.Date,Aug.O3);
title("August Data of O3 concentration");
ylabel(" O3 ppb");

subplot(3,4,9);
plot(Sep.Date,Sep.O3);
title("September Data of O3 concentration");
ylabel(" O3 ppb");

subplot(3,4,10);
plot(Oct.Date,Oct.O3);
title("October Data of O3 concentration");
ylabel(" O3 ppb");

subplot(3,4,11);
plot(Nov.Date,Nov.O3);
title("November Data of O3 concentration");
ylabel(" O3 ppb");

subplot(3,4,12);
plot(Dec.Date,Dec.O3);
title("December Data of O3 concentration");
ylabel(" O3 ppb");


figure(4);

subplot(3,4,1);
sgtitle("Monthly Data of Benzene");
plot(Jan.Date,Jan.Benzene,'b');
title("January Data of Benzene concentration");
ylabel(" Benzene ppb");

subplot(3,4,2);
plot(Feb.Date,Feb.Benzene,'b');
title("February Data of Benzene concentration");
ylabel(" Benzene ppb");

subplot(3,4,3);
plot(Mar.Date,Mar.Benzene,'b');
title("March Data of Benzene concentration");
ylabel(" Benzene ppb");

subplot(3,4,4);
plot(Apr.Date,Apr.Benzene,'b');
title("April Data of Benzene concentration");
ylabel(" Benzene ppb");

subplot(3,4,5);
plot(May.Date,May.Benzene,'b');
title("May Data of Benzene concentration");
ylabel(" Benzene ppb");

subplot(3,4,6);
plot(Jun.Date,Jun.Benzene,'b');
title("June Data of Benzene concentration");
ylabel(" Benzene ppb");


subplot(3,4,7);
plot(Jul.Date,Jul.Benzene,'b');
title("July Data of Benzene concentration");
ylabel(" Benzene ppb");

subplot(3,4,8);
plot(Aug.Date,Aug.Benzene,'b');
title("August Data of Benzene concentration");
ylabel(" Benzene ppb");

subplot(3,4,9);
plot(Sep.Date,Sep.Benzene,'b');
title("September Data of Benzene concentration");
ylabel(" Benzene ppb");

subplot(3,4,10);
plot(Oct.Date,Oct.Benzene,'b');
title("October Data of Benzene concentration");
ylabel(" Benzene ppb");

subplot(3,4,11);
plot(Nov.Date,Nov.Benzene,'b');
title("November Data of Benzene concentration");
ylabel(" Benzene ppb");

subplot(3,4,12);
plot(Dec.Date,Dec.Benzene,'b');
title("December Data of Benzene concentration");
ylabel(" Benzene ppb");




Winter = timerange(datetime('01 Jan 2019','InputFormat','dd MMM yyyy'),datetime('15 Mar 2019','InputFormat','dd MMM yyyy'));
Win = v(Winter,:);

Spring = timerange(datetime('15 Mar 2019','InputFormat','dd MMM yyyy'),datetime('30 May 2019','InputFormat','dd MMM yyyy'));
Spr = v(Spring,:);

Summer = timerange(datetime('01 Jun 2019','InputFormat','dd MMM yyyy'),datetime('15 Aug 2019','InputFormat','dd MMM yyyy'));
Sum = v(Summer,:);

Fall = timerange(datetime('15 Aug 2019','InputFormat','dd MMM yyyy'),datetime('30 Nov 2019','InputFormat','dd MMM yyyy'));
Fal = v(Fall,:);


figure(5);

subplot(3,1,1);
sgtitle("Seasonal Data");
hold on
plot(Win.Date,Win.PM25,'b');
plot(Spr.Date,Spr.PM25,'k');
plot(Sum.Date,Sum.PM25,'c');
plot(Fal.Date,Fal.PM25,'r');
title("Seasonly Data of PM25 concentration");
ylabel(" PM 25 µg/m3");
legend('Winter','Spring','Summer','Fall')
hold off



subplot(3,1,2);
 hold on
plot(Win.Date,Win.O3,'b');
plot(Spr.Date,Spr.O3,'k');
plot(Sum.Date,Sum.O3,'c');
plot(Fal.Date,Fal.O3,'r');
title("Seasonly Data of O3 concentration");
ylabel(" O3 ppb");
legend('Winter','Spring','Summer','Fall');

hold off



subplot(3,1,3);
hold on
plot(Win.Date,Win.Benzene,'b');
plot(Spr.Date,Spr.Benzene,'k');
plot(Sum.Date,Sum.Benzene,'c');
plot(Fal.Date,Fal.Benzene,'r');
title("Seasonly Data of Benzene concentration");
ylabel(" Benzene ppb");
legend('Winter','Spring','Summer','Fall')
hold off




