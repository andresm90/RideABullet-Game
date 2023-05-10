// update timer, adaptado de https://www.youtube.com/watch?v=ywjlUIFfP30&t=21s&ab_channel=SATechsharing
if(mytime<60)
{
mytime = mytime+delta_time/1000000;

showtimeSeg=ceil(mytime);
}else 
{
	mytimeMin=mytimeMin+1;
	mytime=0;
}
