
dbLoadDatabase "C:\HZB\OpcIocShell\dbd\opcDev.dbd"
opc_registerRecordDeviceDriver pdbbase

# OPC server Softing.OPCToolboxDemo_ServerDA.1 has instance ID 1
# OPC server Softing.OPCToolboxDemo_ServerDA.1 has class id (CLSID) {2E565242-B238-11D3-842D-0008C779D775}
opcSetServer("1","opcda:///BECKHOFF.TwinCATOpcServerDA/{F23C1FFA-2396-4BA7-8EA3-E05A3FA05207}")

# OpcGroup#1 has instance ID 1
# OpcGroup#1 has update rate of 20 milliseconds
# OpcGroup#1 is connected to server instance with ID 1
opcSetGroup("1","OpcGroup#1","10", "1")

# OpcGroup#2 has instance ID 2
# OpcGroup#2 has update rate of 50 milliseconds
# OpcGroup#2 is connected to server instance with ID 1
opcSetGroup("2","OpcGroup#2","50", "1")

# OpcGroup#2 has instance ID 2
# OpcGroup#2 has update rate of 100 milliseconds
# OpcGroup#2 is connected to server instance with ID 1
opcSetGroup("3","OpcGroup#2","100", "1")

dbLoadRecords("C:\HZB\OpcIocShell\IDControlIOC\R02IAU.db")
#dbLoadTemplate("C:\HZB\OpcIocShell\IDControlIOC\IDControl.substitutions")
iocInit()
# let there always be a line after iocInit()