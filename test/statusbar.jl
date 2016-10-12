using Images
import ImageView

imgdy = ufixedview(UInt8[y for y=0x00:0xff, x=0:100])
imgdx = ufixedview(UInt8[x for y=1:100, x=0x00:0xff])
ImageView.imshow(imgdy)
ImageView.imshow(imgdx)


A = zeros(300, 200)
lbl = similar(A, Int)
fill!(lbl, 0)
A[80:120, 50:150] = 0.8
lbl[80:120, 50:150] = 1
cx, cy = 200, 100
for j = -30:30, i = -30:30
    if i^2+j^2 <= 900
        A[cx+i,cy+j] = rand()
        lbl[cx+i,cy+j] = 2
    end
end
ImageView.imshowlabeled(A, lbl)
