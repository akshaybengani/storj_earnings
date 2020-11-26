rm -rf /home/akshaybengani123/earning_check
mkdir /home/akshaybengani123/earning_check
sudo -i
cp /mnt/storj-datastore/crypt-*/storage/bandwidth.db /home/akshaybengani123/earning_check/
cp /mnt/storj-datastore/crypt-*/storage/storage_usage.db /home/akshaybengani123/earning_check/
cp /mnt/storj-datastore/crypt-*/storage/piece_spaced_used.db /home/akshaybengani123/earning_check/
cp /mnt/storj-datastore/crypt-*/storage/reputation.db /home/akshaybengani123/earning_check/
cp /mnt/storj-datastore/crypt-*/storage/heldamount.db /home/akshaybengani123/earning_check/
cd /home/akshaybengani123/
git clone https://github.com/akshaybengani/storj_earnings
mv earning_check storj_earnings/
cd storj_earnings
python3 earnings.py earning_check/
exit
sudo rm -rf storj_earnings
