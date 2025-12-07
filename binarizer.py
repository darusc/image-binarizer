import cv2
import numpy as np
from pynq import Overlay, allocate

ol = Overlay("/home/xilinx/pynq/overlays/binarizer.bit")
dma = ol.axi_dma_0

img = cv2.imread('/home/xilinx/images/cat.jpg')

img_gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
h, w = img_gray.shape

flat_image = img_gray.flatten().astype(np.uint8)

if len(flat_image) % 4 != 0:
    pad = 4 - (len(flat_image) % 4)
    flat_image = np.pad(flat_image, (0, pad))

input_buffer = allocate(shape=(len(flat_image),), dtype=np.uint8)
output_buffer = allocate(shape=(len(flat_image),), dtype=np.uint8)

input_buffer[:] = flat_image

dma.sendchannel.transfer(input_buffer)
dma.recvchannel.transfer(output_buffer)
dma.sendchannel.wait()
dma.recvchannel.wait()

binarized_image = np.array(output_buffer).reshape((h, w))
cv2.imwrite('/home/xilinx/images/binarized.jpg', binarized_image)