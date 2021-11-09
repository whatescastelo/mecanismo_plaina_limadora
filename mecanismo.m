%  MECANISMO PLAINA LIMADORA  

for teta2=0:0.1:4*pi;  %fazendo teta 2 variar de 0 a 4 pi( manivela gira 2 vezes)
    % comprimento dos elos
    l1=10;
    l2=5;
    l4=28;
    l5=10;
    a=20;
    
    l3=sqrt(l1^2+l2^2+2*l1*l2*sin(teta2));  %comprimento do elo 3
    teta3=acos((l2*cos(teta2))/l3);         % formula para teta3
    teta5=asin(-1*(l4*sin(teta3)-a)/l5);    % formula para teta 5
    l6=l4*cos(teta3)-l5*cos(teta5);         % comprimento do elo 6
    
    plot([0 l2*cos(teta2)],[l1 l1+l2*sin(teta2)],'o-','linewidth',2);hold on; % para plotar a manivela
    plot([0 l4*cos(teta3)],[0 l4*sin(teta3)],'linewidth',2);hold on;          % para plotar o elo 4
    plot([l4*cos(teta3) l6],[l4*sin(teta3) a],'linewidth',2);hold on;         % para plotar o elo 5
    plot([-30 30],[20 20],'o-');hold off;                                     % linha de referencia do controle deslizante
    
    axis(gca,'equal');
    axis([-30 30 -15 30]);
    
    
    pause(0.1)
   
    
end
    
    
