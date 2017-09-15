#!/usr/bin/python

''' This is a sample for histogram plotting for RGB images and grayscale images for better understanding of colour distribution


'''

import cv2
import math


# Load a color image
# Escolher um canal
# pegar W e H


# Load a color image
img = cv2.imread('leno.jpg', 1)

# convert RGB image to Gray
gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)

print "size of image: ", img.shape  # print size of image
#print "image type:", img.dtype

# Display the color image
cv2.imshow('color_image', img)

# Display the gray image
cv2.imshow('gray_image', gray)

height, width, e = img.shape

# mostrar imagem equalizada.

texto = "essaehumamensageescondidaASCIIthisOisOaOmessagekkkkelesabeserhahhaha"
#print ord(texto[0])
img_size = height * width
n = 0
for i in range(0, height):
    for j in range(0, width):
        if n < len(texto):
            print '<< ', math.floor(gray[i][j]/52)*52
            gray[i][j] = math.floor(gray[i][j]/52)*52 + (ord(texto[n])-65)
            n = n + 1

# Display the gray image
cv2.imshow('_image2', img)
n = 0
decrpt = ''
for i in range(0, height):
    for j in range(0, width):
        if n < len(texto):
            print '>> ', img[i][j]
            decrpt += chr((gray[i][j] % 52 ) + 65)
            n = n + 1

print decrpt

cv2.waitKey(0)
cv2.destroyAllWindows()
