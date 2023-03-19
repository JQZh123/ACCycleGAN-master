import cv2
import os
IMG_DIR = 'data/test_data/test_before'

def load_images_from_folder(folder):
    for filename in os.listdir(folder):
        img = cv2.imread(os.path.join(folder, filename))
        if img is not None:
            resized = cv2.resize(img, (256, 256))
            cv2.imwrite('data/test_data/test/' + filename, resized)

load_images_from_folder(IMG_DIR)
