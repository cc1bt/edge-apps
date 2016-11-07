FROM gcc:5.4
COPY . /dockerbluetoothscan
WORKDIR /dockerbluetoothscan
RUN apt-get update && apt-get install -y libncurses5-dev && apt-get install -y libbluetooth-dev
RUN gcc -std=c11 main.c vector.c bluetooth_scanner.c http_requests.c -lbluetooth -o bluetoothscan
CMD ["./dockerbluetoothscan"]
