import cv2
import numpy as np

# noisy image
img = cv2.imread("noisy_image.png")

gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)

# Canny edge detection
edges = cv2.Canny(gray, 50, 150)

edges = edges.astype(np.float32) / 255.0

cv2.imwrite("edge_map.png", edges * 255)