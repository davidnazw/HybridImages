function hybrid_img = hybridImage(im1, im2, cutoff_low, cutoff_high)
im1_low = imgaussfilt(im1, cutoff_low);
im2_low = imgaussfilt(im2, cutoff_high);
im2_high = im2 - im2_low;
hybrid_img = im1_low + im2_high;
end

