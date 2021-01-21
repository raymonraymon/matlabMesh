function laplacian_surface_editing_3D_test

clc
clear
close all

[vertex,faces]=readOBJ('plane22.obj');
drawMesh(vertex,faces,'facecolor','m', 'edgecolor','y')
hold on
BI=[2,6];
BC=vertex(BI,:)+[0,1.5,0;0,1.5,0];

plot3(BC(:,1),BC(:,2),BC(:,3),'yh','MarkerSize',12)
% 
% options.symmetrize=1;
% options.normalize=1;
% L1 = compute_mesh_laplacian(vertex, faces, 'conformal', options );
% 
% 
% L2 = cotmatrix(vertex, faces);
% M = massmatrix(vertex, faces, 'barycentric');
% L2 = M\L2;

u=laplacian_surface_editing_3D(vertex,faces,BI,BC);


drawMesh(u,faces,'facecolor','g', 'edgecolor','k')
	view(3);
    axis equal
    axis off
    camlight
    lighting gouraud
    cameratoolbar
    set(gca, 'Position',[0 0 1 1]);
end