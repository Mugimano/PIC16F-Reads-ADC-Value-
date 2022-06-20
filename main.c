#include<pic.h>
#define _XTAL_FREQ 20000000 // 20MHz frequency 
#define RS RB4 // LCD RS pin define
#define En RB5 // LCD En pin define

/////LCD Display Functions declaration///
void lcd_init();
void command(unsigned char);
void lcd_data(unsigned char); 
void lcd_send(const char *word); //Pointer end with null charactor 

///ADC conversion Functions declaration////
void adc_init();
void adc0();
void hex_dec1(unsigned int);

//Global variables///
unsigned int a,b,val;
unsigned int th,thr,h,hr,t,o;

void main()
{
TRISA = 0x01; //0000 0001
PORTA = 0x00;

TRISD = 0x00;
TRISB = 0x00;
PORTB = 0x00;
PORTD = 0x00;

lcd_init();
adc_init();
while(1)
{
adc0();
command(0x84);
lcd_send("ADC Value: ");
command(0xc8);
hex_dec1(val);	
}
}

void lcd_init() // FN DEFINITION
{
 command(0x01);//to clear display
 command(0x06);//entry mode set
 command(0x0C);//display on
 command(0x38);// function control
}

void adc_init()
{
 ADCON1=0X80; 	// 1(ADFM) 0(ADCS2) 0 0 0 0 0 0	
}

void adc0()
{
ADCON0=0XC5; //1(ADCS1)1(ADCS0)000101
//while(ADGO); // Only one time (; --> Terminate the line)
__delay_ms(10);
a=ADRESL; //8bit value
b=ADRESH; //its 2 bit value so need to convert 8 bit (2^8)
b=b*256;
val=(b+a); // ADC value
}

//LCD fuctions definitions//

void command(unsigned char com)
{
	PORTD=com;
	RS = 0;
	En = 1;
	__delay_ms(10);
	En = 0;
}

void lcd_send(const char *word)
{
while(*word)
{		
	lcd_data(*word++);//ADC Value: \0
	__delay_ms(10);
}
}

void lcd_data(unsigned char Data)
{
	PORTD=Data;
	RS = 1;
	En = 1;
	__delay_ms(10);
	En = 0;
}

void hex_dec1(unsigned int val) //1023
{
 h=val/1000; // 1023/1000 = 1.023 //Type casting
 hr=val%1000;//023
 t=hr/100; //023/100 = 0.23
 o=hr%100; //23
 th=o/10; //23/10 = 2.3
 thr=o%10; //3
 lcd_data(h+0x30); //31(Hex) --> LCD 1
 lcd_data(t+0x30); //30 --> LCD 0
 lcd_data(th+0x30); //32 --> LCD 2
 lcd_data(thr+0x30); //33 --> LCD 3
}
