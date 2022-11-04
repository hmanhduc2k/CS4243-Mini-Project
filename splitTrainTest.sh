
echo "directory, label" > train_label.csv
echo "directory, label" > test_label.csv
awk '{if(rand()<0.9) {print $0 > "train_label.csv"} else {print $0 > "test_label.csv"}}' dataset.csv