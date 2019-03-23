# HYBRID IMAGES

### INTRODUCTION

There are two parts in this project, in part 1 our goal is to create hybrid images using the approach described in the
SIGGRAPH 2006 paper by Oliva, Torralba, and Schyns. In part 2, we perform different tasks for image enhancement,
including contrast enhancement, color enhancement, and color shift.

### PART 1

#### CREATING HYBRID IMAGES

Hybrid images are created by fusing a low-pass filtered image and a high-pass filtered image. The low-pass filtered image
is obtained by blurring an image with Gaussian filter, while the high-pass filtered image can be obtained by subtracting an
Gaussian blurred image of the original image. The hybrid image can be obtained by summing up the grey scale intensity of
two images.

#### ORIGINAL IMAGES AND THEIR FAST FOURIER TRANSFORM IMAGE


#### HYBRID RESULTS


As Shown in the results above, when combining the low frequency portion of the first image and the high frequency
portion of the second image, there is an hybrid image with some interesting properties. People may observe the hybrid image in a close distance or in a large scale, the high frequency portion of the image will dominate the image, which makes it difficult for us to observe the low frequency portion. In contrast, if people observe the hybrid image from a far distance or scale down the image, the low frequency portion of the image will dominate the image instead.

#### FAST FOURIER TRANSFORM AND CUT-OFF FREQUENCY ANALYSIS


The Fourier Transform of an image decomposes the image into its sine and cosine components. The Fourier Transform of
an image maps an image from the spatial domain to the frequency domain. In the frequency domain, each point
represents the corresponding frequency contained in the spatial domain. In the spatial domain, edges are considered to
be high frequency portions of the image, and the higher the frequency further from the origin it will be accommodated in the
frequency domain. Things like big blobs of color are the low frequency portion of the image, and they will be placed near the origin in the frequency domain.

For the image of the female that is used for the low frequency portion, we can see that when the cut-off
frequency/standard deviation increases the image becomes increasingly blurry, as a consequence, less and less points


representing higher frequency pixels distant from the vertical and horizontal line disappears. We see that as we increase
the cut-off frequency the structure becomes more and more ambiguous and will eventually become hard to identify.

For the image of the dog that is used for the high frequency portion, the outcomes are reversed since to obtain the high
frequency portion of the image, the algorithm removes the low frequency portion from the original image. As the cut-off
frequency increases, more and more details of the dog can be seen, where originally, we can only see some edges of the
dog. This is because when the cut-off frequency increases, the low-pass version of the image will be blurrier and contain
less high frequency information, so that when the low-pass version image is subtracted from the original image, more
details will be persevered.

For the hybrid image, we can see points are smoothly distributed throughout the entire frequency domain. When we look
at the image close we tend to ignore the blurrier part of the images as nature and focus on the details. Interestingly, when
we observe the image from far away or resize the image to be very small, the original hybrid image is re-interpolated in
our brain, the blurry low frequency edges become sharp again and details of the information will be disposed.

### PART 2

#### CONTRAST ENHANCEMENT

#### Original Image 1

#### Contrast enhanced Image 1

#### Original Image 2

As we can see in the original images, the colors are relatively pale and dusky, in the histogram figure, we can see that the
intensity of the pixels are concentrated in the mid-range area in the grey scale, resulting in the image to be overcast. After
applying histogram equalization, pixels with more frequent intensity will be spread out resulting in a more uniformly
distributed histogram, so that mid-range intensity values will be amplified or decreased, we see that in the second image
blue pixels will become bluer and snow becomes whiter.


#### COLOR ENHANCEMENT

In this task, we enhance the colors to be brighter and more vivid. The technique used here is to convert the RGB space to
HSV space. In the original RGB space, we have three channels representing red, green, and blue, we map these colors to
the HSV space. HSV color space is designed to align closely with how human perceive color. The three channels are hue,
saturation, and value. The channel we use is the saturation channel that resembles various shades of colors, higher value
in the saturation channel will make the colors more vivid and bright. For this part, I did elementwise multiplication in the
saturation channel with a scalar to increase the saturation.

The saturation was scaled up by 1.6 in both set of images, resulting in a more vivid and brighter color.



#### COLOR SHIFT

In this task we modify the colors of the original images, for the first image I enhanced the red color, and in the second
image I reduced the yellow color. The technique used is converting the RGB color space to LAB color space. LAB is another
way to perceive colors, L channel is the lightness channel, and A is the channel for green to red, and B is the channel for
blue to yellow. So, if we want to enhance red, we could increase the values in the A channel; If we want to reduce yellow,
we could decrease the values in the B channel.

##### Enhancing Red

In the first set of lava images, I increased the value in B channel by 1.4;


##### Reducing Yellow

In the second set of mount Fuji images, I decreased to value in A channel to 0.5.


