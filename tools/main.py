import time
import sys
import minimalmodbus
import serial

def writeRegister(port, slave_address, reg, value):

    instrument = minimalmodbus.Instrument(port, slave_address)  # port name, slave address (in decimal)
    instrument.serial.baudrate = 115200         # Baud
    instrument.serial.bytesize = 8
    instrument.serial.parity   = serial.PARITY_NONE
    instrument.serial.stopbits = 1
    instrument.serial.timeout  = 0.05          # seconds

    instrument.write_register(reg, value)
    new_value = instrument.read_register(reg)
    print(f"update register {reg} with value: {new_value}")

def readRegister(port, slave_address, reg):
    instrument = minimalmodbus.Instrument(port, slave_address)
    instrument.serial.baudrate = 115200         # Baud
    instrument.serial.bytesize = 8
    instrument.serial.parity   = serial.PARITY_NONE
    instrument.serial.stopbits = 1
    instrument.serial.timeout  = 0.05          # seconds

    value = instrument.read_register(reg, functioncode=4)
    print(f"read {value} from register {reg}")

if __name__ == "__main__":
    if len(sys.argv)<2:
        print(f"usage: {sys.argv[0]} porta indirizzo registro valore")
        exit(1)
    if len(sys.argv)==5:
        writeRegister(sys.argv[1],int(sys.argv[2]),int(sys.argv[3]),int(sys.argv[4]))
    if len(sys.argv)==4:
        readRegister(sys.argv[1],int(sys.argv[2]),int(sys.argv[3]))