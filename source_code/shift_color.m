function color_shifted_img = shift_color(im, channel, scalar)
    im_lab = rgb2lab(im);
    im_lab(:, :, channel) = im_lab(:, :, channel) .* scalar;
    color_shifted_img = lab2rgb(im_lab);
end