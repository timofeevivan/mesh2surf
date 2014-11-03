% mesh 2 surf
Surf_h = get(gca,'Children');
Surf_h = Surf_h(strcmp(get(Surf_h,'Type'),'surface'));
if ~isempty(Surf_h)
    if strcmp(get(Surf_h(1),'FaceLighting'),'flat'), % surf
        set(Surf_h,'FaceLighting','none');
        set(Surf_h,'EdgeLighting','flat');
        set(Surf_h,'FaceColor',[1 1 1]);
        set(Surf_h,'EdgeColor','flat');
    elseif strcmp(get(Surf_h(1),'FaceLighting'),'none'), % mesh
        set(Surf_h,'FaceLighting','flat');
        set(Surf_h,'EdgeLighting','none');
        set(Surf_h,'FaceColor','flat');
        set(Surf_h,'EdgeColor',[0 0 0]);
        shading interp
    end;
end;
clear Surf_h
