%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%% last update 8Nov2021, lne %%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
close all
clc

L=1;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%% Points for the FCC lattice %%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% here are the points at the corner of the cube plus way and back to make
%%% the line
a=[
0 0 0 ; L 0 0 ; L L 0 ; 0 L 0 ; 0 0 0
0 0 L ; L 0 L ; L L L ; 0 L L ; 0 0 L
L 0 L ; L 0 0 ; L 0 L ; L L L ; L L 0 ; L L L ; 0 L L ; 0 L 0 
];

%%% here are the points at the middle of each faces
aa=[ L/2 0 L/2 ; 0 L/2 L/2 ; L/2 L/2 0 ; L L/2 L/2 ; L/2 L L/2 ; L/2 L/2 L ];

%%% here are the points in the intersticial site
b=[ L/4 L/4 L/4 ; L*3/4 L*3/4 L/4 ; L*3/4 L/4 L*3/4 ; L/4 L*3/4 L*3/4 ];


bb1=[
L/4 L/4 L/4 ; 0 0 0 ; L/4 L/4 L/4 ; 0 L/2 L/2 ;
L/4 L/4 L/4 ; L/2 L/2 0 ; L/4 L/4 L/4 ; L/2 0 L/2 
];

bb2=[
L*3/4 L*3/4 L/4 ; L L 0 ; L*3/4 L*3/4 L/4 ; L L/2 L/2;
L*3/4 L*3/4 L/4 ; L/2 L/2 0 ; L*3/4 L*3/4 L/4 ; L/2 L L/2 
];

bb3=[
L*3/4 L/4 L*3/4 ; L 0 L ; L*3/4 L/4 L*3/4 ; L L/2 L/2
L*3/4 L/4 L*3/4 ; L/2 0 L/2 ; L*3/4 L/4 L*3/4 ; L/2 L/2 L
];

bb4=[
L/4 L*3/4 L*3/4 ; 0 L L ; L/4 L*3/4 L*3/4 ; 0 L/2 L/2
L/4 L*3/4 L*3/4 ; L/2 L L/2 ; L/4 L*3/4 L*3/4 ; L/2 L/2 L
];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%% figure FCC lattice %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%X0fig=-1800; Y0fig=100;
X0fig=100; Y0fig=400;
Wfig=500;Hfig=500;

figure('Name','FCC lattice','position',[X0fig Y0fig Wfig Hfig],'color','w')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(1,1,1)
hold on

plot3( a(:,1) , a(:,2) , a(:,3) , 'b.-','markersize',50,'linewidth',2)
plot3( aa(:,1) , aa(:,2) , aa(:,3) , 'b.','markersize',50,'linewidth',2)
plot3( b(:,1) , b(:,2) , b(:,3) , 'r.','markersize',50,'linewidth',2)
plot3( bb1(:,1) , bb1(:,2) , bb1(:,3) , 'r','markersize',20,'linewidth',2)
plot3( bb2(:,1) , bb2(:,2) , bb2(:,3) , 'r','markersize',20,'linewidth',2)
plot3( bb3(:,1) , bb3(:,2) , bb3(:,3) , 'r','markersize',20,'linewidth',2)
plot3( bb4(:,1) , bb4(:,2) , bb4(:,3) , 'r','markersize',20,'linewidth',2)

%xlabel('x')
%ylabel('y')
%zlabel('z')
%grid on
axis equal
view(-30,10)
set(gca,'Box','off','Visible','off')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%% Points for the FCC lattice %%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

a=[
0 0 0 ; L 0 0 ; L L 0 ; 0 L 0 ; 0 0 0
0 0 L ; L 0 L ; L L L ; 0 L L ; 0 0 L
L 0 L ; L 0 0 ; L 0 L ; L L L ; L L 0 ; L L L ; 0 L L ; 0 L 0 
];

aa=[ L/2 L/2 L/2  ];


bb1=[ 0 L/4 L/2 ; 0 L/2 3*L/4 ; 0 3*L/4 L/2 ; 0 L/2 1*L/4 ; 0 L/4 L/2 ];
bb2=[L L/4 L/2 ; L L/2 3*L/4 ; L 3*L/4 L/2 ; L L/2 1*L/4 ; L L/4 L/2 ];
bb3=[ L/4 0 L/2 ; L/2 0 3*L/4 ; 3*L/4 0 L/2 ; L/2 0 1*L/4 ; L/4 0 L/2 ];
bb4=[ L/4 L L/2 ; L/2 L 3*L/4 ; 3*L/4 L L/2 ; L/2 L 1*L/4 ; L/4 L L/2 ];
bb5=[ L/4 L/2 0 ; L/2 3*L/4 0 ; 3*L/4 L/2 0 ; L/2 1*L/4 0 ; L/4 L/2 0 ];
bb6=[ L/4 L/2 L ; L/2 3*L/4 L ; 3*L/4 L/2 L ; L/2 1*L/4 L ; L/4 L/2 L ];

bbb1=[ 0 L/4 L/2 ; L/4 0 L/2 ];
bbb2=[ 0 L/2 L/4 ; L/4 L/2 0 ];
bbb3=[ L/2 L/4 0 ; L/2 0 L/4 ];

bbb4=[ 0 L/2 3*L/4 ; L/4 L/2 L ];
bbb5=[ L/2 L/4 L ; L/2 0 3*L/4 ];

bbb6=[ 3*L/4 L/2 L ; L L/2 3*L/4 ];
bbb7=[ 3*L/4 0 L/2 ; L L/4 L/2 ];
bbb8=[ 3*L/4 L/2 0 ; L L/2 L/4 ];
bbb9=[ L 3*L/4 L/2 ; 3*L/4 L L/2 ];
bbb10=[ L/2 3*L/4 L ; L/2 L 3*L/4 ];
bbb11=[ L/2 3*L/4 0 ; L/2 L L/4 ];
bbb12=[ L/4 L L/2 ; 0 3*L/4 L/2 ];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%% figure reciproque lattice %%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%X0fig=-1800; Y0fig=100;
X0fig=600; Y0fig=400;

figure('Name','FCC lattice','position',[X0fig Y0fig Wfig Hfig],'color','w')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

subplot(1,1,1)
hold on

plot3( a(:,1) , a(:,2) , a(:,3) , 'b.-','markersize',50,'linewidth',2)
plot3( aa(:,1) , aa(:,2) , aa(:,3) , 'b.','markersize',50,'linewidth',2)
%plot3( b(:,1) , b(:,2) , b(:,3) , 'b.','markersize',20,'linewidth',2)

plot3( bb1(:,1) , bb1(:,2) , bb1(:,3) , 'r','markersize',20,'linewidth',2)
plot3( bb2(:,1) , bb2(:,2) , bb2(:,3) , 'r','markersize',20,'linewidth',2)
plot3( bb3(:,1) , bb3(:,2) , bb3(:,3) , 'r','markersize',20,'linewidth',2)
plot3( bb4(:,1) , bb4(:,2) , bb4(:,3) , 'r','markersize',20,'linewidth',2)
plot3( bb5(:,1) , bb5(:,2) , bb5(:,3) , 'r','markersize',20,'linewidth',2)
plot3( bb6(:,1) , bb6(:,2) , bb6(:,3) , 'r','markersize',20,'linewidth',2)

plot3( bbb1(:,1) , bbb1(:,2) , bbb1(:,3) , 'r','markersize',20,'linewidth',2)
plot3( bbb2(:,1) , bbb2(:,2) , bbb2(:,3) , 'r','markersize',20,'linewidth',2)
plot3( bbb3(:,1) , bbb3(:,2) , bbb3(:,3) , 'r','markersize',20,'linewidth',2)
plot3( bbb4(:,1) , bbb4(:,2) , bbb4(:,3) , 'r','markersize',20,'linewidth',2)
plot3( bbb5(:,1) , bbb5(:,2) , bbb5(:,3) , 'r','markersize',20,'linewidth',2)
plot3( bbb6(:,1) , bbb6(:,2) , bbb6(:,3) , 'r','markersize',20,'linewidth',2)
plot3( bbb7(:,1) , bbb7(:,2) , bbb7(:,3) , 'r','markersize',20,'linewidth',2)
plot3( bbb8(:,1) , bbb8(:,2) , bbb8(:,3) , 'r','markersize',20,'linewidth',2)
plot3( bbb9(:,1) , bbb9(:,2) , bbb9(:,3) , 'r','markersize',20,'linewidth',2)
plot3( bbb10(:,1) , bbb10(:,2) , bbb10(:,3) , 'r','markersize',20,'linewidth',2)
plot3( bbb11(:,1) , bbb11(:,2) , bbb11(:,3) , 'r','markersize',20,'linewidth',2)
plot3( bbb12(:,1) , bbb12(:,2) , bbb12(:,3) , 'r','markersize',20,'linewidth',2)

%xlabel('kx')
%ylabel('ky')
%zlabel('kz')
%grid on
axis equal
view(-30,10)
set(gca,'Box','off','Visible','off')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%