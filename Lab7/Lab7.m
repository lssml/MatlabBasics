%Image Manipulation
%Bill XU

load clown.mat
subX = X(100:140, 30:80);
figure, imshow(subX,map);
imwrite(subX,map,'clown-nose.png')

circuit = imread('circuit.tif');
figure, imshow(circuit)
circBW = imbinarize(circuit);
figure, imshow(circBW)
figure, imshow(diff(circBW))
figure, imshow(edge(circuit))


peppers = imread('peppers.png');
figure, imshow(peppers)

F = fspecial('average',7);
peppBlur = imfilter(peppers,F,'conv');
figure, imshow(peppBlur)

I = rgb2gray(peppers);
imshow(I);
IBlur = imfilter(I,F,'conv');
imshow(IBlur);
imwrite(IBlur, 'peppers-gray-blurred.png');