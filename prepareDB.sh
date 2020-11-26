rm -rf /home/akshaybengani123/earning_check
mkdir /home/akshaybengani123/earning_check
sudo -i
cp /mnt/storj-datastore/crypt-1/storage/bandwidth.db /home/akshaybengani123/earning_check/
cp /mnt/storj-datastore/crypt-1/storage/storage_usage.db /home/akshaybengani123/earning_check/
cp /mnt/storj-datastore/crypt-1/storage/piece_spaced_used.db /home/akshaybengani123/earning_check/
cp /mnt/storj-datastore/crypt-1/storage/reputation.db /home/akshaybengani123/earning_check/
cp /mnt/storj-datastore/crypt-1/storage/heldamount.db /home/akshaybengani123/earning_check/
cd /home/akshaybengani123/
git clone https://github.com/akshaybengani/storj_earnings
mv earning_check storj_earnings/
cd storj_earnings
python3 earnings.py earning_check/
exit
sudo rm -rf storj_earnings
