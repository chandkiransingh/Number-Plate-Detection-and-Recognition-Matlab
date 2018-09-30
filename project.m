[path file] = uigetfile('*.jpg','Select Image');
img = imread(fullfile(file,path));
figure;
imshow(img);
title('Original Image');
img2 = rgb2gray(img);
imgX = edge(img2,'sobel','horizontal');
imgY = edge(img2,'sobel','vertical');
img3 = imgX|imgY;
img3 = bwareaopen(img3, 700);
se = strel('line',2,90);
img3 = imdilate(img3,se);
se = strel('line',2,0);
img3 = imdilate(img3,se);
img4 = imfill(img3,'holes');
img4 = bwmorph(img4,'thin',1);
se = strel('line',5,90);
img5 = imerode(img4,se);
img5 = imerode(img5,se);
img6 = immultiply(img2,img5);
verticalProfile = sum(img6, 2);
row1 = find(verticalProfile, 1, 'first');
row2 = find(verticalProfile, 1, 'last');
horizontalProfile = sum(img6, 1);
column1 = find(horizontalProfile, 1, 'first');
column2 = find(horizontalProfile, 1, 'last');
img7 = img6(row1-1:row2+1, column1-1:column2+1);
img7 = ~im2bw(img7);
figure;
imshow(img7);
title('Detected Number Plate');
imgProp = regionprops(img7,'BoundingBox','Image');
x=1;
im0=imread('0.bmp');
im1=imread('1.bmp');
im2=imread('2.bmp');
im3=imread('3.bmp');
im4=imread('4.bmp');
im5=imread('5.bmp');
im6=imread('6.bmp');
im7=imread('7.bmp');
im8=imread('8.bmp');
im9=imread('9.bmp');

imA=imread('A.bmp');
imB=imread('B.bmp');
imC=imread('C.bmp');
imD=imread('D.bmp');
imE=imread('E.bmp');
imF=imread('F.bmp');
imG=imread('G.bmp');
imH=imread('H.bmp');
imI=imread('I.bmp');
imJ=imread('J.bmp');
imK=imread('K.bmp');
imL=imread('L.bmp');
imM=imread('M.bmp');
imN=imread('N.bmp');
imO=imread('O.bmp');
imP=imread('P.bmp');
imQ=imread('Q.bmp');
imR=imread('R.bmp');
imS=imread('S.bmp');
imT=imread('T.bmp');
imU=imread('U.bmp');
imV=imread('V.bmp');
imW=imread('W.bmp');
imX=imread('X.bmp');
imY=imread('Y.bmp');
imZ=imread('Z.bmp');

cnt=0;
out='';
for i = 1 : size(imgProp)
    this = imgProp(i).BoundingBox;
    if(this(3)>=15 &&this(4)>=30 && this(3)<=80 &&this(4)<=160)
    temp = ~imgProp(i).Image; 
    temp=imresize(temp,[40,20]);
    imwrite(temp,'temp.bmp');
    imgTest =imread('temp.bmp');
    img = imabsdiff(imA,imgTest);
    rectangle('position',this,'EdgeColor','r');
    minDiff = sum(img(:));
    cnt=cnt+1;
    ch = 'A';
    if cnt==1 || cnt==2 || cnt==6 || cnt==5
        img = imabsdiff(imB,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='B';
        end
       img = imabsdiff(imC,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='C';
        end
        img = imabsdiff(imD,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='D';
        end
        img = imabsdiff(imE,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='E';
        end
        img = imabsdiff(imF,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='F';
        end
        img = imabsdiff(imG,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='G';
        end
        img = imabsdiff(imH,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='H';
        end
        img = imabsdiff(imI,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='I';
        end
        img = imabsdiff(imJ,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='J';
        end
        img = imabsdiff(imK,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='K';
        end
        img = imabsdiff(imL,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='L';
        end
        img = imabsdiff(imM,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='M';
        end
        img = imabsdiff(imN,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='N';
        end
        img = imabsdiff(imO,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='O';
        end
        img = imabsdiff(imP,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='P';
        end
        img = imabsdiff(imQ,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='Q';
        end
        img = imabsdiff(imR,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='R';
        end
        img = imabsdiff(imS,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='S';
        end
        img = imabsdiff(imT,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='T';
        end
        img = imabsdiff(imU,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='U';
        end
        img = imabsdiff(imV,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='V';
        end
        img = imabsdiff(imW,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='W';
        end
        img = imabsdiff(imX,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='X';
        end
        img = imabsdiff(imY,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='Y';
        end
        img = imabsdiff(imZ,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='Z';
        end
    else
        img = imabsdiff(im0,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='0';
        end
        img = imabsdiff(im1,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='1';
        end
        img = imabsdiff(im2,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='2';
        end
        img = imabsdiff(im3,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='3';
        end
        img = imabsdiff(im4,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='4';
        end
        img = imabsdiff(im5,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='5';
        end
        img = imabsdiff(im6,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='6';
        end
        img = imabsdiff(im7,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='7';
        end
        img = imabsdiff(im8,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='8';
        end
        img = imabsdiff(im9,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='9';
        end   
     end
     out=strcat(out,ch);
   end
end

msgbox(strcat('Vehicle Registraction Number :',out));