from socket import * # Socket library

def send_message_to_monitor(message):
    host = "127.0.0.1" # Set to IP address of target machine
    port = 8800 # Port in the target machine
    addr = (host, port) # Tuple with the address
    s = socket(AF_INET, SOCK_STREAM) # Create a stream socket

    # Now we connect to the specified address
    s.connect(addr)
    # We send the message intruced as parameter
    s.sendall(message)
    # Finally we shutdown this communication (the socket stays connected)
    s.shutdown(1)

    # We wait for the answer from the monitor (we read 1024 bytes, can be extended if needed)
    answer = s.recv(1024)
    # Close the socket
    s.close()

    # Return the answer from the monitor
    return repr(answer)