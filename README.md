# Algorithms-for-predicting-bacterias'-drug-resistance
This project is to find a method to predict whether
the bacteria has high resistance or low resistance against two
medicines - carbenicillin and tobramycin based on bacteria’s
images. In the training data, the resistance of carbenicillin and
tobramycin and the bacteria’s image are given. In this project, we
also testify which feature of the image could make the prediction
more accurate.

INTRODUCTION:

The procedure of our experiment is:
1) Label the Data: We analyzed the data and labeled the
data which are positive as 1 and the data which are
zero or negative as 0. In our settings, the positive
numbers means that bacterium have strong resistance
and non-positive numbers means that bacterium have
weak resistance.
2) Image Processing: We cropped images so that they
could have the same size and the bacteria is located
at the center. We also set images gray-scale when it is
necessary.
3) Extract Features: In order to classify the images, we
decided to extract the features from images and compare
them with different method. In this experiment, we
extract the images’ RGB values and symmetry values
as their features.
4) Test different methods of classifying: In this experiment,
we tried K-Nearest Neighbors algorithm, Linear Regression algorithm, and Logistic Regression algorithm.
