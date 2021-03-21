/*
 * main.c
 *
 *  Created on: MAR 7, 2021
 *      Author: BLEE
 *  Modified by: Nikola Cvetkovic
 *
 *  For the book "Real Time Digital Signal Processing:
 *                Fundamentals, Implementation and Application, 3rd Ed"
 *                By Sen M. Kuo, Bob H. Lee, and Wenshun Tian
 *                Publisher: John Wiley and Sons, Ltd
 */
//void C55x_delay_msec(int msecs);

#include <stdio.h>               // Include information in standard library
//#include <csl_intc.h>

void main()                      // Define function main that without argument
{                                //   statements of a function enclosed in braces
                                 // Library function printf to print a string
                                 //   \n is the control character for a new line
    while(1)
    {
        printf("Hello World!\n");
//        C55x_delay_msec(2000);
    }
}

///**
// * \brief    This function used to generate time delay in milliseconds
// *
// * \param    msecs - number of milliseconds
// *
// * \return   void
// */
//void C55x_delay_msec(int msecs)
//{
//    volatile unsigned short delay;
//
//    while(msecs)
//    {
//        for(delay = 0; delay < 6250; delay++ );
//        msecs--;
//    }
//}
