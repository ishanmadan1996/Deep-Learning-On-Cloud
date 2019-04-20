# Deep-Learning-On-Cloud

Making a comparitive analysis of the performance of Tensorflow's object detection model on various public cloud platforms.

## Getting Started

git clone https://github.com/ishanmadan1996/Deep-Learning-On-Cloud.git

### Prerequisites

pip install -r requirements.txt


### Steps followed

Directories:-
'''
data/ — Will have records and csv files.
images/ — This directory will contain our dataset.
training/ — In this directory we will save our trained model.
eval/ — Will save results of evaluation on trained model.
'''

Step 1: Generating CSV files from Images
The goal is to label the image and generate train.csv and test.csv files. The detailed explanation can be found:-
'''
https://www.youtube.com/watch?v=K_mFnvzyLvc&list=PLQVvvaa0QuDcNK5GeCQnxYnSSaar2tpku&index=3
'''

Label the image using lablelImg. The detailed explanation can be found here.
We need to convert XML into csv files which is demonstrated here:-
'''
https://www.youtube.com/watch?v=kq2Gjv_pPe8&index=4&list=PLQVvvaa0QuDcNK5GeCQnxYnSSaar2tpku
'''
For converting the XML to csv files we use the following script:-
'''
xml_to_csv.py
'''
Step 2: Generating TFRecords

In order to convert our csv file input into tfrecord (format used by tensorflow's object detection API), we can use the following script:-
```
generate_tfrecord.py
```

Step 3: Train Model

Step 4: Evaluate Model

For more detailed instructions following the steps given in below documents and links:-
'''
Detailed_Instructions/

https://becominghuman.ai/tensorflow-object-detection-api-tutorial-training-and-evaluating-custom-object-detector-ed2594afcf73
https://pythonprogramming.net/introduction-use-tensorflow-object-detection-api-tutorial/ 

'''

## Built With

* [Tensorflow Object Detection](https://github.com/tensorflow/models/tree/master/research/object_detection) - Model used
* [Python](https://docs.python.org/3/) - Programming language


## Authors

* **Ishan Madan** - *Initial work* - [ishanmadan1996](https://github.com/ishanmadan1996)


## Acknowledgments

* Special thanks to sentdex (https://www.youtube.com/user/sentdex)
