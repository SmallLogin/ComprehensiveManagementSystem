
<HTML><HEAD><TITLE>��������ѯ</TITLE>
<META 
content="ũ��; ����; ����; ����; ʱ��; ����; ����; ��֧; ��Ф; gregorian solar; chinese lunar; calendar;" 
name=keywords>
<META content=All name=robots>
<META content="gregorian solar calendar and chinese lunar calendar" 
name=description>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<style type="text/css">

p {fONT-FAMILY: ����; FONT-SIZE: 9pt;line-height:12pt:color:#000000}

TD {fONT-FAMILY: ����,simsun; FONT-SIZE: 9pt}
    
a:link{ color:#000000; text-decoration:none}     
a:visited{COLOR: #000000; TEXT-DECORATION: none} 
a:active{color:green;text-decoration:none}
a:hover{color:red;text-decoration:underline}  
 </style>



<SCRIPT language=JavaScript>
<!--
/*****************************************************************************
                                   ��������
*****************************************************************************/
var ttime=0;
var tInfo=new Array(
0x04bd8,0x04ae0,0x0a570,0x054d5,0x0d260,0x0d950,0x16554,0x056a0,0x09ad0,0x055d2,
0x04ae0,0x0a5b6,0x0a4d0,0x0d250,0x1d255,0x0b540,0x0d6a0,0x0ada2,0x095b0,0x14977,
0x04970,0x0a4b0,0x0b4b5,0x06a50,0x06d40,0x1ab54,0x02b60,0x09570,0x052f2,0x04970,
0x06566,0x0d4a0,0x0ea50,0x06e95,0x05ad0,0x02b60,0x186e3,0x092e0,0x1c8d7,0x0c950,
0x0d4a0,0x1d8a6,0x0b550,0x056a0,0x1a5b4,0x025d0,0x092d0,0x0d2b2,0x0a950,0x0b557,
0x06ca0,0x0b550,0x15355,0x04da0,0x0a5b0,0x14573,0x052b0,0x0a9a8,0x0e950,0x06aa0,
0x0aea6,0x0ab50,0x04b60,0x0aae4,0x0a570,0x05260,0x0f263,0x0d950,0x05b57,0x056a0,
0x096d0,0x04dd5,0x04ad0,0x0a4d0,0x0d4d4,0x0d250,0x0d558,0x0b540,0x0b6a0,0x195a6,
0x095b0,0x049b0,0x0a974,0x0a4b0,0x0b27a,0x06a50,0x06d40,0x0af46,0x0ab60,0x09570,
0x04af5,0x04970,0x064b0,0x074a3,0x0ea50,0x06b58,0x055c0,0x0ab60,0x096d5,0x092e0,
0x0c960,0x0d954,0x0d4a0,0x0da50,0x07552,0x056a0,0x0abb7,0x025d0,0x092d0,0x0cab5,
0x0a950,0x0b4a0,0x0baa4,0x0ad50,0x055d9,0x04ba0,0x0a5b0,0x15176,0x052b0,0x0a930,
0x07954,0x06aa0,0x0ad50,0x05b52,0x04b60,0x0a6e6,0x0a4e0,0x0d260,0x0ea65,0x0d530,
0x05aa0,0x076a3,0x096d0,0x04bd7,0x04ad0,0x0a4d0,0x1d0b6,0x0d250,0x0d520,0x0dd45,
0x0b5a0,0x056d0,0x055b2,0x049b0,0x0a577,0x0a4b0,0x0aa50,0x1b255,0x06d20,0x0ada0,
0x14b63);

var solarMonth=new Array(31,28,31,30,31,30,31,31,30,31,30,31);
var Gan=new Array("��","��","��","��","��","��","��","��","��","��");
var Zhi=new Array("��","��","��","î","��","��","��","δ","��","��","��","��");
var Animals=new Array("��","ţ","��","��","��","��","��","��","��","��","��","��");
var solarTerm = new Array("С��","��","����","��ˮ","����","����","����","����","����","С��","â��","����","С��","����","����","����","��¶","���","��¶","˪��","����","Сѩ","��ѩ","����");
var sTermInfo = new Array(0,21208,42467,63836,85337,107014,128867,150921,173149,195551,218072,240693,263343,285989,308563,331033,353350,375494,397447,419210,440795,462224,483532,504758);
var nStr1 = new Array('��','һ','��','��','��','��','��','��','��','��','ʮ');
var nStr2 = new Array('��','ʮ','إ','ئ','��');
var monthName = new Array("һ��","����","����","����","����","����","����","����","����","ʮ��","ʮһ��","ʮ����");

//�������� *��ʾ�ż���
var sFtv = new Array(
"0101*Ԫ����",
"0202 ����ʪ����",
"0210 ���������",
"0214 ���˽�",
"0301 ���ʺ�����",
"0303 ȫ��������",
"0305 ѧ�׷������",
"0308 ��Ů��",
"0312 ֲ���� ����ɽ����������",
"0314 ���ʾ�����",
"0315 ������Ȩ����",
"0317 �й���ҽ�� ���ʺ�����",
"0321 ����ɭ���� �����������ӹ����� ���������",
"0322 ����ˮ��",
"0323 ����������",
"0324 ������ν�˲���",
"0325 ȫ����Сѧ����ȫ������",
"0330 ����˹̹������",
"0401 ���˽� ȫ�����������˶���(����) ˰��������(����)",
"0407 ����������",
"0422 ���������",
"0423 ����ͼ��Ͱ�Ȩ��",
"0424 �Ƿ����Ź�������",
"0501*�Ͷ���",
"0504 �����",
"0505 ��ȱ����������",
"0508 �����ʮ����",
"0512 ���ʻ�ʿ��",
"0515 ���ʼ�ͥ��",
"0517 ���ʵ�����",
"0518 ���ʲ������",
"0520 ȫ��ѧ��Ӫ����",
"0523 ����ţ����",
"0531 ����������", 
"0601 ���ʶ�ͯ��",
"0605 ���绷��������",
"0606 ȫ��������",
"0617 ���λ�Į���͸ɺ���",
"0623 ���ʰ���ƥ����",
"0625 ȫ��������",
"0626 ���ʽ�����",
"0701 ��ۻع������ �й����� ���罨����",
"0702 ��������������",
"0707 ����ս��������",
"0711 �����˿���",
"0730 ���޸�Ů��",
"0801 ������",
"0808 �й����ӽ�(�ְֽ�)",
"0815 ����ս��ʤ������",
"0908 ����ɨä�� �������Ź�������",
"0909 ë����������",
"0910 �й���ʦ��", 
"0914 ������������",
"0916 ���ʳ����㱣����",
"0918 �š�һ���±������",
"0920 ���ʰ�����",
"0927 ����������",
"0928 ���ӵ���",
"1001*����� ���������� �������˽�",
"1002*����ڼ��� ���ʺ�ƽ���������ɶ�����",
"1003*����ڼ���",
"1004 ���綯����",
"1006 ���˽�",
"1008 ȫ����Ѫѹ�� �����Ӿ���",
"1009 ���������� ���������",
"1010 �������������� ���羫��������",
"1013 ���籣���� ���ʽ�ʦ��",
"1014 �����׼��",
"1015 ����ä�˽�(�����Ƚ�)",
"1016 ������ʳ��",
"1017 ��������ƶ����",
"1022 ���紫ͳҽҩ��",
"1024 ���Ϲ���",
"1031 �����ڼ���",
"1107 ʮ������������������",
"1108 �й�������",
"1109 ȫ��������ȫ����������",
"1110 ���������",
"1111 ���ʿ�ѧ���ƽ��(����������һ��)",
"1112 ����ɽ����������",
"1114 ����������",
"1117 ���ʴ�ѧ���� ����ѧ����",
"1120*������",
"1121*������ �����ʺ��� ���������",
"1122*������",
"1129 ������Ԯ����˹̹���������",
"1201 ���簬�̲���",
"1203 ����м�����",
"1205 ���ʾ��ú���ᷢչ־Ը��Ա��",
"1208 ���ʶ�ͯ������",
"1209 ����������",
"1210 ������Ȩ��",
"1212 �����±������",
"1213 �Ͼ�����ɱ(1937��)�����գ�����Ѫ��ʷ��",
"1220 ���Żع����",
"1221 ����������",
"1224 ƽ��ҹ",
"1225 ʥ����",
"1226 ë�󶫵�������")

//ũ������ *��ʾ�ż���
var lFtv = new Array(
"0101*����",
"0102*����",
"0115 Ԫ����",
"0505*�����",
"0707 ��Ϧ���˽�",
"0715 ��Ԫ��",
"0815*�����",
"0909 ������",
"1208 ���˽�",
"1223 С��",
"0100*��Ϧ")

//ĳ�µĵڼ������ڼ�
var wFtv = new Array(
"0150 ���������", //һ�µ����һ�������գ��µ�����һ�������գ�
"0520 ����ĸ�׽�",
"0530 ȫ��������",
"0630 ���׽�",
"0730 ��ū�۹�����",
"0932 ���ʺ�ƽ��",
"0940 �������˽� �����ͯ��",
"0950 ���纣����",
"1011 ����ס����",
"1013 ���ʼ�����Ȼ�ֺ���(������)",
"1144 �ж���")

/*****************************************************************************
���ڼ���
*****************************************************************************/

//====================================== ����ũ�� y���������
function lYearDays(y) {
var i, sum = 348;
for(i=0x8000; i>0x8; i>>=1) sum += (tInfo[y-1900] & i)? 1: 0;
return(sum+leapDays(y));
}

//====================================== ����ũ�� y�����µ�����
function leapDays(y) {
if(leapMonth(y))  return((tInfo[y-1900] & 0x10000)? 30: 29);
else return(0);
}

//====================================== ����ũ�� y�����ĸ��� 1-12 , û�򷵻� 0
function leapMonth(y) {
return(tInfo[y-1900] & 0xf);
}

//====================================== ����ũ�� y��m�µ�������
function monthDays(y,m) {
return( (tInfo[y-1900] & (0x10000>>m))? 30: 29 );
}


//====================================== ���ũ��, �������ڿؼ�, ����ũ�����ڿؼ�
//                                       �ÿؼ������� .year .month .day .isLeap
function Lunar(objDate) {

var i, leap=0, temp=0;
var offset   = (Date.UTC(objDate.getFullYear(),objDate.getMonth(),objDate.getDate()) - Date.UTC(1900,0,31))/86400000;

for(i=1900; i<2050 && offset>0; i++) { temp=lYearDays(i); offset-=temp; }

if(offset<0) { offset+=temp; i--; }

this.year = i;

leap = leapMonth(i); //���ĸ���
this.isLeap = false;

for(i=1; i<13 && offset>0; i++) {
//����
if(leap>0 && i==(leap+1) && this.isLeap==false)
{ --i; this.isLeap = true; temp = leapDays(this.year); }
else
{ temp = monthDays(this.year, i); }

//�������
if(this.isLeap==true && i==(leap+1)) this.isLeap = false;

offset -= temp;
}

if(offset==0 && leap>0 && i==leap+1)
if(this.isLeap)
{ this.isLeap = false; }
else
{ this.isLeap = true; --i; }

if(offset<0){ offset += temp; --i; }

this.month = i;
this.day = offset + 1;
}

//==============================���ع��� y��ĳm+1�µ�����
function solarDays(y,m) {
if(m==1)
return(((y%4 == 0) && (y%100 != 0) || (y%400 == 0))? 29: 28);
else
return(solarMonth[m]);
}
//============================== ���� offset ���ظ�֧, 0=����
function cyclical(num) {
return(Gan[num%10]+Zhi[num%12]);
}

//============================== ��������
function calElement(sYear,sMonth,sDay,week,lYear,lMonth,lDay,isLeap,cYear,cMonth,cDay) {

this.isToday    = false;
//���
this.sYear      = sYear;   //��Ԫ��4λ����
this.sMonth     = sMonth;  //��Ԫ������
this.sDay       = sDay;    //��Ԫ������
this.week       = week;    //����, 1������
//ũ��
this.lYear      = lYear;   //��Ԫ��4λ����
this.lMonth     = lMonth;  //ũ��������
this.lDay       = lDay;    //ũ��������
this.isLeap     = isLeap;  //�Ƿ�Ϊũ������?
//����
this.cYear      = cYear;   //����, 2������
this.cMonth     = cMonth;  //����, 2������
this.cDay       = cDay;    //����, 2������

this.color      = '';

this.lunarFestival = ''; //ũ������
this.solarFestival = ''; //��������
this.solarTerms    = ''; //����
}

//===== ĳ��ĵ�n������Ϊ����(��0С������)
function sTerm(y,n) {
if(y==2009 && n==2){sTermInfo[n]=43467}
var offDate = new Date( ( 31556925974.7*(y-1900) + sTermInfo[n]*60000  ) + Date.UTC(1900,0,6,2,5) );
return(offDate.getUTCDate());
}




//============================== ���������ؼ� (y��,m+1��)
/*
����˵��: ���������µ��������Ͽؼ�

ʹ�÷�ʽ: OBJ = new calendar(��,��������);

OBJ.length      ���ص��������
OBJ.firstWeek   ���ص���һ������

�� OBJ[����].�������� ����ȡ�ø���ֵ

OBJ[����].isToday  �����Ƿ�Ϊ���� true �� false

���� OBJ[����] ���Բμ� calElement() �е�ע��
*/
function calendar(y,m) {

var sDObj, lDObj, lY, lM, lD=1, lL, lX=0, tmp1, tmp2, tmp3;
var cY, cM, cD; //����,����,����
var lDPOS = new Array(3);
var n = 0;
var firstLM = 0;

sDObj = new Date(y,m,1,0,0,0,0);    //����һ������

this.length    = solarDays(y,m);    //������������
this.firstWeek = sDObj.getDay();    //��������1�����ڼ�

////////���� 1900��������Ϊ������(60����36)
if(m<2) cY=cyclical(y-1900+36-1);

else cY=cyclical(y-1900+36);

var term2=sTerm(y,2); //��������

////////���� 1900��1��С����ǰΪ ������(60����12)
var firstNode = sTerm(y,m*2) //���ص��¡��ڡ�Ϊ���տ�ʼ
cM = cyclical((y-1900)*12+m+12);

//����һ���� 1900/1/1 �������
//1900/1/1�� 1970/1/1 ���25567��, 1900/1/1 ����Ϊ������(60����10)
var dayCyclical = Date.UTC(y,m,1,0,0,0,0)/86400000+25567+10;

for(var i=0;i<this.length;i++) {

if(lD>lX) {
sDObj = new Date(y,m,i+1);    //����һ������
lDObj = new Lunar(sDObj);     //ũ��
lY    = lDObj.year;           //ũ����
lM    = lDObj.month;          //ũ����
lD    = lDObj.day;            //ũ����
lL    = lDObj.isLeap;         //ũ���Ƿ�����
lX    = lL? leapDays(lY): monthDays(lY,lM); //ũ���������һ��

if(n==0) firstLM = lM;
lDPOS[n++] = i-lD+1;
}

//�������������·ֵ�����, ������Ϊ��
/*
//PM�������2��3�գ���һ���Ǹ����꣬Ӧ������î�ꡣ
by yuji

����firstNode��ָũ��ÿ�µĽ������ڵ����ڣ��������־�ж�
ũ��ÿ����ʼ����ɵ�֧�Ǵ���ģ�Ӧ����ÿ�µ�ũ����һ������ȷ��
���µ���ɵ�֧��ũ��ÿ�³�һ��Ҫ���¼���һ����ɵ�֧��
*/
if(m==1 && ((i+1)==term2 || lD==1)) cY=cyclical(y-1900+36);

//����������, �ԡ��ڡ�Ϊ��
//if((i+1)==firstNode) cM = cyclical((y-1900)*12+m+13);

/*
by yuji

����firstNode��ָũ��ÿ�µĽ������ڵ����ڣ��������־�ж�
ũ��ÿ����ʼ����ɵ�֧�Ǵ���ģ�Ӧ����ÿ�µ�ũ����һ������ȷ��
���µ���ɵ�֧��ũ��ÿ�³�һ��Ҫ���¼���һ����ɵ�֧��
*/
if(lD==1)   {   
	cM=cyclical((y-1900)*12+m+13);
	
}  



//����
cD = cyclical(dayCyclical+i);

//sYear,sMonth,sDay,week,
//lYear,lMonth,lDay,isLeap,
//cYear,cMonth,cDay
this[i] = new calElement(y, m+1, i+1, nStr1[(i+this.firstWeek)%7],
lY, lM, lD++, lL,
cY ,cM, cD );
}

//����
tmp1=sTerm(y,m*2  )-1;
tmp2=sTerm(y,m*2+1)-1;
this[tmp1].solarTerms = solarTerm[m*2];
this[tmp2].solarTerms = solarTerm[m*2+1];
//guohao
if( y==2009 && m==1)
{
	if(tD==3)
	{
		this[tmp1].solarTerms = ''
		//this[tmp2].solarTerms = ''
	}
	else if(tD==4)
	{
		this[tmp1].solarTerms = '����'
		//this[tmp2].solarTerms = ''
	}
}
if(m==3) this[tmp1].color = 'red'; //������ɫ

//��������
for(i in sFtv)
if(sFtv[i].match(/^(\d{2})(\d{2})([\s\*])(.+)$/))
if(Number(RegExp.$1)==(m+1)) {
this[Number(RegExp.$2)-1].solarFestival += RegExp.$4 + ' ';
if(RegExp.$3=='*') this[Number(RegExp.$2)-1].color = 'red';
}

//���ܽ���
for(i in wFtv)
if(wFtv[i].match(/^(\d{2})(\d)(\d)([\s\*])(.+)$/))
if(Number(RegExp.$1)==(m+1)) {
tmp1=Number(RegExp.$2);
tmp2=Number(RegExp.$3);
if(tmp1<5)
this[((this.firstWeek>tmp2)?7:0) + 7*(tmp1-1) + tmp2 - this.firstWeek].solarFestival += RegExp.$5 + ' ';
else {
tmp1 -= 5;
tmp3 = (this.firstWeek+this.length-1)%7; //�������һ������?
this[this.length - tmp3 - 7*tmp1 + tmp2 - (tmp2>tmp3?7:0) - 1 ].solarFestival += RegExp.$5 + ' ';
}
}

//ũ������
for(i in lFtv)
if(lFtv[i].match(/^(\d{2})(.{2})([\s\*])(.+)$/)) {
tmp1=Number(RegExp.$1)-firstLM;
if(tmp1==-11) tmp1=1;
if(tmp1 >=0 && tmp1<n) {
tmp2 = lDPOS[tmp1] + Number(RegExp.$2) -1;
if( tmp2 >= 0 && tmp2<this.length && this[tmp2].isLeap!=true) {
this[tmp2].lunarFestival += RegExp.$4 + ' ';
if(RegExp.$3=='*') this[tmp2].color = 'red';
}
}
}


//�����ֻ������3��4��
if(m==2 || m==3) {
var estDay = new easter(y);
if(m == estDay.m)
this[estDay.d-1].solarFestival = this[estDay.d-1].solarFestival+' ����� Easter Sunday';
}


if(m==2) this[20].solarFestival = this[20].solarFestival+unescape('%20%u6D35%u8CE2%u751F%u65E5');

//��ɫ������
if((this.firstWeek+12)%7==5)
this[12].solarFestival += '��ɫ������';

//����
if(y==tY && m==tM) this[tD-1].isToday = true;
}

//======================================= ���ظ���ĸ����(���ֺ��һ�������ܺ�ĵ�һ����)
function easter(y) {

var term2=sTerm(y,5); //ȡ�ô�������
var dayTerm2 = new Date(Date.UTC(y,2,term2,0,0,0,0)); //ȡ�ô��ֵĹ������ڿؼ�(����һ��������3��)
var lDayTerm2 = new Lunar(dayTerm2); //ȡ��ȡ�ô���ũ��

if(lDayTerm2.day<15) //ȡ���¸���Բ���������
var lMlen= 15-lDayTerm2.day;
else
var lMlen= (lDayTerm2.isLeap? leapDays(y): monthDays(y,lDayTerm2.month)) - lDayTerm2.day + 15;

//һ����� 1000*60*60*24 = 86400000 ����
var l15 = new Date(dayTerm2.getTime() + 86400000*lMlen ); //�����һ����ԲΪ��������
var dayEaster = new Date(l15.getTime() + 86400000*( 7-l15.getUTCDay() ) ); //����¸�����

this.m = dayEaster.getUTCMonth();
this.d = dayEaster.getUTCDate();

}

//====================== ��������
function cDay(d){
var s;

switch (d) {
case 10:
s = '��ʮ'; break;
case 20:
s = '��ʮ'; break;
break;
case 30:
s = '��ʮ'; break;
break;
default :
s = nStr2[Math.floor(d/10)];
s += nStr1[d%10];
}
return(s);
}

///////////////////////////////////////////////////////////////////////////////

var cld;

function drawCld(SY,SM) {
var i,sD,s,size;
cld = new calendar(SY,SM);

if(SY>1874 && SY<1909) yDisplay = '����' + (((SY-1874)==1)?'Ԫ':SY-1874);
if(SY>1908 && SY<1912) yDisplay = '��ͳ' + (((SY-1908)==1)?'Ԫ':SY-1908);

if(SY>1911) yDisplay = '����' + (((SY-1949)==1)?'Ԫ':SY-1949);

GZ.innerHTML = yDisplay +'�� ũ�� ' + cyclical(SY-1900+36) + '�� ��'+Animals[(SY-4)%12]+'�꡿';

YMBG.innerHTML = "&nbsp;" + SY + "��" + "<BR>&nbsp;" + monthName[SM];

for(i=0;i<42;i++) {

sObj=eval('SD'+ i);
lObj=eval('LD'+ i);

sObj.className = '';

sD = i - cld.firstWeek;

if(sD>-1 && sD<cld.length) { //������
sObj.innerHTML = sD+1;

if(cld[sD].isToday) sObj.className = 'todyaColor'; //������ɫ

sObj.style.color = cld[sD].color; //����������ɫ

if(cld[sD].lDay==1) //��ʾũ����
lObj.innerHTML = '<b>'+(cld[sD].isLeap?'��':'') + cld[sD].lMonth + '��' + (monthDays(cld[sD].lYear,cld[sD].lMonth)==29?'С':'��')+'</b>';
else //��ʾũ����
lObj.innerHTML = cDay(cld[sD].lDay);

s=cld[sD].lunarFestival;
if(s.length>0) { //ũ������
if(s.length>6) s = s.substr(0, 4)+'...';
s = s.fontcolor('red');
}
else { //��������
s=cld[sD].solarFestival;
if(s.length>0) {
size = (s.charCodeAt(0)>0 && s.charCodeAt(0)<128)?8:4;
if(s.length>size+2) s = s.substr(0, size)+'...';
s=(s=='��ɫ������')?s.fontcolor('black'):s.fontcolor('blue');
}
else { //إ�Ľ���
s=cld[sD].solarTerms;
if(s.length>0) s = s.fontcolor('limegreen');
}
}

if(cld[sD].solarTerms=='����') s = '������'.fontcolor('red');
if(cld[sD].solarTerms=='â��') s = 'â�ֽ�'.fontcolor('red');
if(cld[sD].solarTerms=='����') s = '������'.fontcolor('red');
if(cld[sD].solarTerms=='����') s = '������'.fontcolor('red');



if(s.length>0) lObj.innerHTML = s;

}
else { //������
sObj.innerHTML = '';
lObj.innerHTML = '';
}
}
}


function changeCld() {
var y,m;
y=CLD.SY.selectedIndex+1900;
m=CLD.SM.selectedIndex;
drawCld(y,m);
}

function pushBtm(K) {
switch (K){
case 'YU' :
if(CLD.SY.selectedIndex>0) CLD.SY.selectedIndex--;
break;
case 'YD' :
if(CLD.SY.selectedIndex<150) CLD.SY.selectedIndex++;
break;
case 'MU' :
if(CLD.SM.selectedIndex>0) {
CLD.SM.selectedIndex--;
}
else {
CLD.SM.selectedIndex=11;
if(CLD.SY.selectedIndex>0) CLD.SY.selectedIndex--;
}
break;
case 'MD' :
if(CLD.SM.selectedIndex<11) {
CLD.SM.selectedIndex++;
}
else {
CLD.SM.selectedIndex=0;
if(CLD.SY.selectedIndex<150) CLD.SY.selectedIndex++;
}
break;
default :
CLD.SY.selectedIndex=tY-1900;
CLD.SM.selectedIndex=tM;
}
changeCld();
}

var Today = new Date();
var tY = Today.getFullYear();
var tM = Today.getMonth();
var tD = Today.getDate();
//////////////////////////////////////////////////////////////////////////////

var width = "130";
var offsetx = 2;
var offsety = 8;

var x = 0;
var y = 0;
var snow = 0;
var sw = 0;
var cnt = 0;

var dStyle;
document.onmousemove = mEvn;

//��ʾ��ϸ��������
function mOvr(v) {
var s,festival;
var sObj=eval('SD'+ v);
var d=sObj.innerHTML-1;

//sYear,sMonth,sDay,week,
//lYear,lMonth,lDay,isLeap,
//cYear,cMonth,cDay

if(sObj.innerHTML!='') {

sObj.style.cursor = 's-resize';

if(cld[d].solarTerms == '' && cld[d].solarFestival == '' && cld[d].lunarFestival == '')
festival = '';
else
festival = '<TABLE WIDTH=100% BORDER=0 CELLPADDING=2 CELLSPACING=0 BGCOLOR="#CCFFCC"><TR><TD>'+
'<FONT COLOR="#000000" STYLE="font-size:9pt;">'+cld[d].solarTerms + ' ' + cld[d].solarFestival + ' ' + cld[d].lunarFestival+'</FONT></TD>'+
'</TR></TABLE>';

s= '<TABLE WIDTH="130" BORDER=0 CELLPADDING="2" CELLSPACING=0 BGCOLOR="#000066" style="filter:Alpha(opacity=80)"><TR><TD>' +
'<TABLE WIDTH=100% BORDER=0 CELLPADDING=0 CELLSPACING=0><TR><TD ALIGN="right"><FONT COLOR="#ffffff" STYLE="font-size:9pt;">'+
cld[d].sYear+' �� '+cld[d].sMonth+' �� '+cld[d].sDay+' ��<br>����'+cld[d].week+'<br>'+
'<font color="violet">ũ��'+(cld[d].isLeap?'�� ':' ')+cld[d].lMonth+' �� '+cld[d].lDay+' ��</font><br>'+
'<font color="yellow">'+cld[d].cYear+'�� '+cld[d].cMonth+'�� '+cld[d].cDay + '��</font>'+
'</FONT></TD></TR></TABLE>'+ festival +'</TD></TR></TABLE>';

document.all["detail"].innerHTML = s;

if (snow == 0) {
dStyle.left = x+offsetx-(width/2);
dStyle.top = y+offsety;
dStyle.visibility = "visible";
snow = 1;
}
}
}

//�����ϸ��������
function mOut() {
if ( cnt >= 1 ) { sw = 0; }
if ( sw == 0 ) { snow = 0; dStyle.visibility = "hidden";}
else cnt++;
}

//ȡ��λ��
function mEvn() {
x=event.x;
y=event.y;
if (document.body.scrollLeft)
{x=event.x+document.body.scrollLeft; y=event.y+document.body.scrollTop;}
if (snow){
dStyle.left = x+offsetx-(width/2);
dStyle.top = y+offsety;
}
}


///////////////////////////////////////////////////////////////////////////

function changeTZ() {
   CITY.innerHTML = CLD.TZ.value.substr(6)
   setCookie("TZ",CLD.TZ.selectedIndex)
}


function tick() {
   var today
   today = new Date()
   Clock.innerHTML = today.toLocaleString()
   Clock2.innerHTML = TimeAdd(today.toGMTString(), CLD.TZ.value)
   window.setTimeout("tick()", 1000);
}

function setCookie(name, value) {
	var today = new Date()
	var expires = new Date()
	expires.setTime(today.getTime() + 1000*60*60*24*365)
	document.cookie = name + "=" + escape(value)	+ "; expires=" + expires.toGMTString()
}

function getCookie(Name) {
   var search = Name + "="
   if(document.cookie.length > 0) {
      offset = document.cookie.indexOf(search)
      if(offset != -1) {
         offset += search.length
         end = document.cookie.indexOf(";", offset)
         if(end == -1) end = document.cookie.length
         return unescape(document.cookie.substring(offset, end))
      }
      else return ""
   }
}

/////////////////////////////////////////////////////////

function initial() {
  
   dStyle = detail.style;
   CLD.SY.selectedIndex=tY-1900;
   CLD.SM.selectedIndex=tM;
   drawCld(tY,tM);
   pushBtm('');
   CLD.TZ.selectedIndex=getCookie("TZ");
   changeTZ();
   tick();
}
//-->
</SCRIPT>

<SCRIPT language=VBScript>
<!--
//===== ������ʱ��
Function TimeAdd(UTC,T)
   Dim PlusMinus, DST, y,tSave
   If Left(T,1)="-" Then PlusMinus = -1 Else PlusMinus = 1
   UTC=Right(UTC,Len(UTC)-5)
   UTC=Left(UTC,Len(UTC)-4)
   y = Year(UTC)
   TimeAdd=DateAdd("n", (Cint(Mid(T,2,2))*60 + Cint(Mid(T,4,2))) * PlusMinus, UTC)
   //�����չ��Լ�ڼ�: 4�µ�һ������00:00 �� 10������һ��������00:00
   If Mid(T,6,1)="*" And DateSerial(y,4,(9 - Weekday(DateSerial(y,4,1)) mod 7) ) <= TimeAdd And DateSerial(y,10,31 - Weekday(DateSerial(y,10,31))) >= TimeAdd Then
      TimeAdd=CStr(DateAdd("h", 1, TimeAdd)) & "<FONT STYLE='font-size:18pt;font-family:Wingdings; color:red'>R</FONT>"
   Else
   End If
   TimeAdd = CStr(TimeAdd)
End Function
-->
</SCRIPT>

<STYLE>.todyaColor {
	BACKGROUND-COLOR: aqua
}
</STYLE>

<META content="MSHTML 6.00.2800.1505" name=GENERATOR></HEAD>
<BODY leftMargin=0 topMargin=15 onload=initial()>
<br>
<SCRIPT language=JavaScript>
<!--
   if(navigator.appName == "Netscape" || parseInt(navigator.appVersion) < 4)
   document.write("<h1>���������޷�ִ�д˳���</h1>�˳����� IE4 �Ժ�İ汾����ִ��!!")
//-->
</SCRIPT>

<SCRIPT language=JavaScript>

lck=0;
function r(hval)
{
if ( lck == 0 )
{
document.bgColor=hval;
}
}
</SCRIPT>

<DIV id=detail style="POSITION: absolute"></DIV>
<CENTER>
<FORM name=CLD>
<TABLE>
  <TBODY>
  <TR>
    <TD vAlign=top align=middle><BR><FONT style="FONT-SIZE: 9pt" >����ʱ��:</FONT><BR><FONT id=Clock face=Arial color=#000080 size=4 
      align="center"></FONT>
      <P><!--ʱ�� *��ʾ�Զ�����Ϊ�չ��Լʱ��--><FONT style="FONT-SIZE: 9pt" size=2><SELECT 
      style="FONT-SIZE: 9pt" onchange=changeTZ() name=TZ> <OPTION 
        value="-1200 ���������ˡ��ϼ���" selected>���ʻ�����<OPTION 
        value="-1100 ��;������Ħ��Ⱥ��">��Ħ��<OPTION value="-1000 ������">������<OPTION 
        value=-0900*����˹��>����˹��<OPTION value=-0800*̫ƽ��ʱ��(����)��������>̫ƽ��<OPTION 
        value=-0700*����ɣ��>����ɽ��<OPTION value=-0700*ɽ��ʱ��(����)>����ɽ��<OPTION 
        value=-0600*��������(���ô�)>���ô��в�<OPTION value=-0600*ī�����С�����������>ī����<OPTION 
        value=-0600*�в�ʱ��(����)>�����в�<OPTION value=-0500*���������>������̫ƽ��<OPTION 
        value=-0500*����ʱ��(����)>���Ӷ���<OPTION value=-0500*ӡ�ڰ���(����)>����<OPTION 
        value=-0400*������˹��������>����������<OPTION value="-0400*������ʱ�� ���ô�)">������<OPTION 
        value="-0330 �µ�(���ô󶫰�)">Ŧ����<OPTION value="-0300 ��������">��������<OPTION 
        value="-0300 ��³ŵ˹����˹�����γ�">�����޶���<OPTION value=-0200*�������в�>�������в�<OPTION 
        value=-0100*���ٶ�Ⱥ����ά�½�Ⱥ��>���ٶ�<OPTION 
        value="+0000 ��������ʱ�䡢�����֡����������׶�">Ӣ������<OPTION 
        value="+0000 Ī��ά��(��������)������������">�������α�׼<OPTION 
        value="+0100 ���衢������">����<OPTION value="+0100 ������, ��ɳ, ������˹">��ŷ<OPTION 
        value="+0100 ���֡�˹�¸��Ħ����������������³������άҲ��">��ŷ<OPTION 
        value="+0200 ��ɫ��">��ɫ��<OPTION value=+0200*��ŷ>��ŷ<OPTION 
        value=+0200*����>����<OPTION value=+0200*�ŵ䡢�ն���������˹̹��>GFT<OPTION 
        value=+0200*�����ס�Ƥ����>�Ϸ�<OPTION 
        value=+0300*�͸������ء������(����)�����ŵ�(ɳ�ڵ�)>ɳ�ڵذ�����<OPTION 
        value=+0300*Ī˹�ơ�ʥ�˵ñ�����ռ�����߸����>����˹<OPTION value=+0330*�º���>����<OPTION 
        value=+0400*�������(��������)��Ī˹����������˹(�����ǹ���)>������<OPTION 
        value=+0430*������>������<OPTION value="+0500 ��˹�����͵¡������桢�������ֱ��������">����<OPTION 
        value="+0530 ���򡢼Ӷ���������˹���µ��������">ӡ��<OPTION 
        value="+0600 �����ᡢ�￨">����<OPTION value="+0700 ���ȡ��ǼӴ��־����">����<OPTION 
        value="+0800 ���������졢������">�й�<OPTION 
        value="+0900 ���������桢���ϡ����ǡ��ǿ���(����������)">����<OPTION 
        value="+0930 �����">�����в�<OPTION value="+1000 ����˹����ī������ϯ����">ϯ����<OPTION 
        value="+1000 ������">��˹÷����<OPTION value="+1000 �ص���Ī˹�ȸۡ���  ��">��̫ƽ��<OPTION 
        value=+1100*�����������Ⱥ�����¿��׶�����>̫ƽ���в�<OPTION 
        value="+1200 ����١��¿���">Ŧ����<OPTION 
      value="+1200 쳼á��ϼ�������Ъ��Ⱥ��">쳼�</OPTION>
      </SELECT>ʱ�� </FONT><BR><FONT 
      id=Clock2 face=Arial color=#000080 size=4 align="center"></FONT><BR><FONT 
      style="FONT-SIZE: 120pt; COLOR: green; FONT-FAMILY: Webdings">&ucirc;</FONT><BR><FONT 
      id=CITY 
      style="FONT-SIZE: 9pt; WIDTH: 150px; COLOR: blue; FONT-FAMILY: '��ϸ����'"></FONT></P>
      </TD>
    <TD align=middle>
      <DIV style="Z-INDEX: -1; POSITION: absolute; TOP: 70px"><FONT id=YMBG 
      style="FONT-SIZE: 80pt; COLOR: #f0f0f0; FONT-FAMILY: '����'">&nbsp;0000<BR>&nbsp;JUN</FONT> 
      </DIV>
      <TABLE border=0>
        <TBODY>
        <TR>
          <TD bgColor=#000080 colSpan=7><FONT style="FONT-SIZE: 9pt" 
            color=#ffffff size=2>����<SELECT style="FONT-SIZE: 9pt" 
            onchange=changeCld() name=SY> 
              <SCRIPT language=JavaScript><!--
            for(i=1900;i<2050;i++) document.write('<option>'+i)
            //--></SCRIPT>
            </SELECT>��<SELECT style="FONT-SIZE: 9pt" onchange=changeCld() 
            name=SM> 
              <SCRIPT language=JavaScript><!--
            for(i=1;i<13;i++) document.write('<option>'+i)
            //--></SCRIPT>
            </SELECT>�� </FONT><FONT id=GZ face=�꿬�� color=yellow 
            size=3></FONT><BR></TD></TR>
        <TR align=middle bgColor=#e0e0e0>
          <TD width=54><FONT color=red>��</FONT></TD>
          <TD width=54>һ</TD>
          <TD width=54>��</TD>
          <TD width=54>��</TD>
          <TD width=54>��</TD>
          <TD width=54>��</TD>
          <TD width=54><FONT color=green>��</FONT></TD></TR>
        <SCRIPT language=JavaScript><!--
            var gNum
            for(i=0;i<6;i++) {
               document.write('<tr align=center>')
               for(j=0;j<7;j++) {
                  gNum = i*7+j
                  document.write('<td id="GD' + gNum +'" onMouseOver="mOvr(' + gNum +')" onMouseOut="mOut()"><font id="SD' + gNum +'" size=5 face="Arial Black"')
                  if(j == 0) document.write(' color=red')
                  if(j == 6)
                     if(i%2==1) document.write(' color=red')
                        else document.write(' color=green')
                  document.write(' TITLE=""> </font><br><font id="LD' + gNum + '" size=2 style="font-size:9pt"> </font></td>')
               }
               document.write('</tr>')
            }
            //--></SCRIPT>
        </TBODY></TABLE></TD>
    <TD vAlign=top align=middle width=40><BR><BR><BR><BR><BUTTON 
      style="FONT-SIZE: 9pt" onClick="pushBtm('YU')">���</BUTTON><BR><BUTTON 
      style="FONT-SIZE: 9pt" onClick="pushBtm('YD')">���</BUTTON> 
      <P><BUTTON style="FONT-SIZE: 9pt" 
      onclick="pushBtm('MU')">�¡�</BUTTON><BR><BUTTON style="FONT-SIZE: 9pt" 
      onclick="pushBtm('MD')">�¡�</BUTTON> 
      <P><BUTTON style="FONT-SIZE: 9pt" onClick="pushBtm('')">����</BUTTON> 
  </P></TD></TR></TBODY></TABLE></FORM>
<P></P>
<HR width="90%" color=#cccccc noShade SIZE=1>
<FONT style="FONT-SIZE: 9pt" face=ARIAL size=2>������<FONT 
color=red>��ɫ</FONT>/<FONT color=green>��ɫ</FONT><FONT color=black>��ʾ�ڼ��գ�ũ����<FONT 
color=green>��ɫ</FONT>��ʾΪ24�����գ�<FONT color=red>��ɫ</FONT>��ʾΪ��ͳ���գ�<FONT 
color=blue>��ɫ</FONT>���ʾΪ���ڽڼ���<BR></CENTER></BODY></HTML>