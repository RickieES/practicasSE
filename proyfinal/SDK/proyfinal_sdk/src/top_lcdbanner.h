/*****************************************************************************
* Filename:          N:\ws\proyfinal/drivers/top_lcdbanner_v1_00_a/src/top_lcdbanner.h
* Version:           1.00.a
* Description:       top_lcdbanner Driver Header File
* Date:              Thu Jan 26 22:38:33 2023 (by Create and Import Peripheral Wizard)
*****************************************************************************/

#ifndef TOP_LCDBANNER_H
#define TOP_LCDBANNER_H

/***************************** Include Files *******************************/

#include "xbasic_types.h"
#include "xstatus.h"
#include "xil_io.h"

/************************** Constant Definitions ***************************/

/**
 * Constantes a�adidas externamente al fichero original generado por XPS
 */
# define CLEAR_DISPLAY_CMD 0x00000001      // RS=0, RW=0, inicializa display
# define RETURN_HOME_CMD 0x00000002        // RS=0, RW=0, vuelta a casa
# define L2R_SCROLLVIEWPORT_CMD 0x00000018 // RS=0, RW=0, 0001 1000, desplazamiento del cursor (s=0) e incremento de AR (c=1)
# define R2L_SCROLLVIEWPORT_CMD 0x0000001C // RS=0, RW=0, 0001 1100, desplazamiento de viewport (s=1) e incremento de AR (c=1)
# define L2R_SCROLLONWRITE_CMD 0x00000007  // RS=0, RW=0, 0000 0111, desplazamiento de viewport (s=1) a derecha (c=1)
# define R2L_SCROLLONWRITE_CMD 0x00000005  // RS=0, RW=0, 0000 0101, desplazamiento de viewport (s=1) a izquierda (c=0)
# define WRITE_CMD 0x00000200              // RS=1, RW=0, OR con caracter
# define FIRST_ROW 0x00000080              // RS=0, RW=0, fija direccion DDRAM 10000000, AR=00
# define SECOND_ROW 0x000000C0   

/**
 * User Logic Slave Space Offsets
 */
#define TOP_LCDBANNER_USER_SLV_SPACE_OFFSET (0x00000000)

/**
 * Write Packet FIFO Register/Data Space Offsets
 * -- WRFIFO_RST  : write packet fifo reset register
 * -- WRFIFO_SR   : write packet fifo status register
 * -- WRFIFO_DATA : write packet fifo data
 */
#define TOP_LCDBANNER_WRFIFO_REG_SPACE_OFFSET (0x00000100)
#define TOP_LCDBANNER_WRFIFO_RST_OFFSET (TOP_LCDBANNER_WRFIFO_REG_SPACE_OFFSET + 0x00000000)
#define TOP_LCDBANNER_WRFIFO_SR_OFFSET (TOP_LCDBANNER_WRFIFO_REG_SPACE_OFFSET + 0x00000004)
#define TOP_LCDBANNER_WRFIFO_DATA_SPACE_OFFSET (0x00000200)
#define TOP_LCDBANNER_WRFIFO_DATA_OFFSET (TOP_LCDBANNER_WRFIFO_DATA_SPACE_OFFSET + 0x00000000)

/**
 * Write Packet FIFO Masks
 * -- WRFIFO_FULL_MASK  : write packet fifo full condition
 * -- WRFIFO_AF_MASK    : write packet fifo almost full condition
 * -- WRFIFO_DL_MASK    : write packet fifo deadlock condition
 * -- WRFIFO_SCL_MASK   : write packet fifo vacancy scaling enabled
 * -- WRFIFO_WIDTH_MASK : write packet fifo encoded data port width
 * -- WRFIFO_DREP_MASK  : write packet fifo DRE present
 * -- WRFIFO_VAC_MASK   : write packet fifo vacancy
 * -- WRFIFO_RESET      : write packet fifo reset
 */
#define WRFIFO_FULL_MASK (0x80000000UL)
#define WRFIFO_AF_MASK (0x40000000UL)
#define WRFIFO_DL_MASK (0x20000000UL)
#define WRFIFO_SCL_MASK (0x10000000UL)
#define WRFIFO_WIDTH_MASK (0x0E000000UL)
#define WRFIFO_DREP_MASK (0x01000000UL)
#define WRFIFO_VAC_MASK (0x00FFFFFFUL)
#define WRFIFO_RESET (0x0000000A)

/**************************** Type Definitions *****************************/


/***************** Macros (Inline Functions) Definitions *******************/

/**
 *
 * Write a value to a TOP_LCDBANNER register. A 32 bit write is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is written.
 *
 * @param   BaseAddress is the base address of the TOP_LCDBANNER device.
 * @param   RegOffset is the register offset from the base to write to.
 * @param   Data is the data written to the register.
 *
 * @return  None.
 *
 * @note
 * C-style signature:
 * 	void TOP_LCDBANNER_mWriteReg(Xuint32 BaseAddress, unsigned RegOffset, Xuint32 Data)
 *
 */
#define TOP_LCDBANNER_mWriteReg(BaseAddress, RegOffset, Data) \
 	Xil_Out32((BaseAddress) + (RegOffset), (Xuint32)(Data))

/**
 *
 * Read a value from a TOP_LCDBANNER register. A 32 bit read is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is read from the register. The most significant data
 * will be read as 0.
 *
 * @param   BaseAddress is the base address of the TOP_LCDBANNER device.
 * @param   RegOffset is the register offset from the base to write to.
 *
 * @return  Data is the data from the register.
 *
 * @note
 * C-style signature:
 * 	Xuint32 TOP_LCDBANNER_mReadReg(Xuint32 BaseAddress, unsigned RegOffset)
 *
 */
#define TOP_LCDBANNER_mReadReg(BaseAddress, RegOffset) \
 	Xil_In32((BaseAddress) + (RegOffset))


/**
 *
 * Reset write packet FIFO of TOP_LCDBANNER to its initial state.
 *
 * @param   BaseAddress is the base address of the TOP_LCDBANNER device.
 *
 * @return  None.
 *
 * @note
 * C-style signature:
 * 	void TOP_LCDBANNER_mResetWriteFIFO(Xuint32 BaseAddress)
 *
 */
#define TOP_LCDBANNER_mResetWriteFIFO(BaseAddress) \
 	Xil_Out32((BaseAddress)+(TOP_LCDBANNER_WRFIFO_RST_OFFSET), WRFIFO_RESET)

/**
 *
 * Check status of TOP_LCDBANNER write packet FIFO module.
 *
 * @param   BaseAddress is the base address of the TOP_LCDBANNER device.
 *
 * @return  Status is the result of status checking.
 *
 * @note
 * C-style signature:
 * 	bool TOP_LCDBANNER_mWriteFIFOFull(Xuint32 BaseAddress)
 * 	Xuint32 TOP_LCDBANNER_mWriteFIFOVacancy(Xuint32 BaseAddress)
 *
 */
#define TOP_LCDBANNER_mWriteFIFOFull(BaseAddress) \
 	((Xil_In32((BaseAddress)+(TOP_LCDBANNER_WRFIFO_SR_OFFSET)) & WRFIFO_FULL_MASK) == WRFIFO_FULL_MASK)
#define TOP_LCDBANNER_mWriteFIFOVacancy(BaseAddress) \
 	(Xil_In32((BaseAddress)+(TOP_LCDBANNER_WRFIFO_SR_OFFSET)) & WRFIFO_VAC_MASK)

/**
 *
 * Write 32 bit data to TOP_LCDBANNER write packet FIFO module.
 *
 * @param   BaseAddress is the base address of the TOP_LCDBANNER device.
 * @param   DataOffset is the offset from the data port to write to.
 * @param   Data is the value to be written to write packet FIFO.
 *
 * @return  None.
 *
 * @note
 * C-style signature:
 * 	void TOP_LCDBANNER_mWriteToFIFO(Xuint32 BaseAddress, unsigned DataOffset, Xuint32 Data)
 *
 */
#define TOP_LCDBANNER_mWriteToFIFO(BaseAddress, DataOffset, Data) \
 	Xil_Out32((BaseAddress) + (TOP_LCDBANNER_WRFIFO_DATA_OFFSET) + (DataOffset), (Xuint32)(Data))

/************************** Function Prototypes ****************************/


/**
 *
 * Run a self-test on the driver/device. Note this may be a destructive test if
 * resets of the device are performed.
 *
 * If the hardware system is not built correctly, this function may never
 * return to the caller.
 *
 * @param   baseaddr_p is the base address of the TOP_LCDBANNER instance to be worked on.
 *
 * @return
 *
 *    - XST_SUCCESS   if all self-test code passed
 *    - XST_FAILURE   if any self-test code failed
 *
 * @note    Caching must be turned off for this function to work.
 * @note    Self test may fail if data memory and device are not on the same bus.
 *
 */
XStatus TOP_LCDBANNER_SelfTest(void * baseaddr_p);

#endif /** TOP_LCDBANNER_H */
