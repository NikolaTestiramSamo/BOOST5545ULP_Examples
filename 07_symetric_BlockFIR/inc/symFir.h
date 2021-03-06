/*
 * Experiment implementation of symmetric FIR filter - Chapter 3
 * symFir.h
 *
 * Description: This is the header file for symmetric FIR filter
 *
 *  Created on: May 13, 2012
 *      Author: BLEE
 *
 * 		For the book "Real Time Digital Signal Processing:
 *                    Fundamentals, Implementation and Application, 3rd Ed"
 *                    By Sen M. Kuo, Bob H. Lee, and Wenshun Tian
 * 		              Publisher: John Wiley and Sons, Ltd
 */

#define  NUM_TAPS   48
#define  NUM_DATA   80

void symFir(Int16 *x, Int16 blkSize,
			Int16 *h, Int16 order,
            Int16 *y,
            Int16 *w, Int16 *index);
