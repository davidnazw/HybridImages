function color_enhanced_img = enhance_color(im, scalar)
    im_hsv = rgb2hsv(im);
    im_hsv(:, :, 2) = im_hsv(:, :, 2) .* scalar;
    color_enhanced_img = hsv2rgb(im_hsv);
end