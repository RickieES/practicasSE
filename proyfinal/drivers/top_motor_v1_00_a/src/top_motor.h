/*****************************************************************************
* Filename:          N:\ws\proyfinal/drivers/top_motor_v1_00_a/src/top_motor.h
* Version:           1.00.a
* Description:       top_motor Driver Header File
* Date:              Mon Jan 16 23:01:58 2023 (by Create and Import Peripheral Wizard)
*****************************************************************************/

#ifndef TOP_MOTOR_H
#define TOP_MOTOR_H

/***************************** Include Files *******************************/

#include "xbasic_types.h"
#include "xstatus.h"
#include "xil_io.h"

/************************** Constant Definitions ***************************/


/**
 * User Logic Slave Space Offsets
 * -- SLV_REG0 : user logic slave module register 0
 * -- SLV_REG1 : user logic slave module register 1
 */
#define TOP_MOTOR_USER_SLV_SPACE_OFFSET (0x00000000)
#define TOP_MOTOR_SLV_REG0_OFFSET (TOP_MOTOR_USER_SLV_SPACE_OFFSET + 0x00000000)
#define TOP_MOTOR_SLV_REG1_OFFSET (TOP_MOTOR_USER_SLV_SPACE_OFFSET + 0x00000004)

/**************************** Type Definitions *****************************/


/***************** Macros (Inline Functions) Definitions *******************/

/**
 *
 * Write a value to a TOP_MOTOR register. A 32 bit write is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is written.
 *
 * @param   BaseAddress is the base address of the TOP_MOTOR device.
 * @param   RegOffset is the register offset from the base to write to.
 * @param   Data is the data written to the register.
 *
 * @return  None.
 *
 * @note
 * C-style signature:
 * 	void TOP_MOTOR_mWriteReg(Xuint32 BaseAddress, unsigned RegOffset, Xuint32 Data)
 *
 */
#define TOP_MOTOR_mWriteReg(BaseAddress, RegOffset, Data) \
 	Xil_Out32((BaseAddress) + (RegOffset), (Xuint32)(Data))

/**
 *
 * Read a value from a TOP_MOTOR register. A 32 bit read is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is read from the register. The most significant data
 * will be read as 0.
 *
 * @param   BaseAddress is the base address of the TOP_MOTOR device.
 * @param   RegOffset is the register offset from the base to write to.
 *
 * @return  Data is the data from the register.
 *
 * @note
 * C-style signature:
 * 	Xuint32 TOP_MOTOR_mReadReg(Xuint32 BaseAddress, unsigned RegOffset)
 *
 */
#define TOP_MOTOR_mReadReg(BaseAddress, RegOffset) \
 	Xil_In32((BaseAddress) + (RegOffset))


/**
 *
 * Write/Read 32 bit value to/from TOP_MOTOR user logic slave registers.
 *
 * @param   BaseAddress is the base address of the TOP_MOTOR device.
 * @param   RegOffset is the offset from the slave register to write to or read from.
 * @param   Value is the data written to the register.
 *
 * @return  Data is the data from the user logic slave register.
 *
 * @note
 * C-style signature:
 * 	void TOP_MOTOR_mWriteSlaveRegn(Xuint32 BaseAddress, unsigned RegOffset, Xuint32 Value)
 * 	Xuint32 TOP_MOTOR_mReadSlaveRegn(Xuint32 BaseAddress, unsigned RegOffset)
 *
 */
#define TOP_MOTOR_mWriteSlaveReg0(BaseAddress, RegOffset, Value) \
 	Xil_Out32((BaseAddress) + (TOP_MOTOR_SLV_REG0_OFFSET) + (RegOffset), (Xuint32)(Value))
#define TOP_MOTOR_mWriteSlaveReg1(BaseAddress, RegOffset, Value) \
 	Xil_Out32((BaseAddress) + (TOP_MOTOR_SLV_REG1_OFFSET) + (RegOffset), (Xuint32)(Value))

#define TOP_MOTOR_mReadSlaveReg0(BaseAddress, RegOffset) \
 	Xil_In32((BaseAddress) + (TOP_MOTOR_SLV_REG0_OFFSET) + (RegOffset))
#define TOP_MOTOR_mReadSlaveReg1(BaseAddress, RegOffset) \
 	Xil_In32((BaseAddress) + (TOP_MOTOR_SLV_REG1_OFFSET) + (RegOffset))

/************************** Function Prototypes ****************************/


/**
 *
 * Run a self-test on the driver/device. Note this may be a destructive test if
 * resets of the device are performed.
 *
 * If the hardware system is not built correctly, this function may never
 * return to the caller.
 *
 * @param   baseaddr_p is the base address of the TOP_MOTOR instance to be worked on.
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
XStatus TOP_MOTOR_SelfTest(void * baseaddr_p);

#endif /** TOP_MOTOR_H */
