hl.curve("myBezier", {
    type = "bezier";
    points = { { 0.05, 0.9 }, { 0.1, 1.05 } };
});

hl.curve("amazingBezier", {
    type = "bezier";
    points = { { 0.25, 0.59 }, { 0.1, 1.05 } };
});

hl.curve("popinBezier", {
    type = "bezier";
    points = { { 0.5, 0.1 }, { 0.05, 1.0 } };
});

hl.curve("layerBezier", {
    type = "bezier";
    points = { { 0.5, 0.1 }, { 0.05, 1.0 } };
});

hl.curve("workspaceBezier", {
    type = "bezier";
    points = { { 0.16, 0.20 }, { 0, 1 } };
});


hl.animation({
    enabled = true;
    leaf = "windowsIn";

    speed = 6;
    bezier = "myBezier";
    style = "slide";
});

hl.animation({
    enabled = true;
    leaf = "windowsOut";

    speed = 5;
    bezier = "amazingBezier";
    style = "slide";
});

hl.animation({
    enabled = true;
    leaf = "windowsMove";

    speed = 4.5;
    bezier = "myBezier";
    style = "slide";
});

hl.animation({
        enabled = true;
        leaf = "layersIn";

    speed = 6;
    bezier = "layerBezier";
    style = "slide";
});

hl.animation({
    enabled = true;
    leaf = "layersOut";

    speed = 6;
    bezier = "layerBezier";
    style = "slide";
});

hl.animation({
    enabled = true;
    leaf = "workspaces";

    speed = 3.5;
    bezier = "workspaceBezier";
    style = "slidefade 16%";
});

hl.animation({
    enabled = true;
    leaf = "specialWorkspace";

    speed = 3.5;
    bezier = "myBezier";
    style = "slidefadevert 10%";
});

hl.animation({
    enabled = true;
    leaf = "fade";

    speed = 4;
    bezier = "myBezier";
});

hl.animation({
    enabled = true;
    leaf = "fadeLayersIn";

    speed = 4;
    bezier = "layerBezier";
});

hl.animation({
    enabled = true;
    leaf = "fadeLayersOut";

    speed = 3;
    bezier = "layerBezier";
});

hl.animation({
    enabled = true;
    leaf = "border";

    speed = 5.5;
    bezier = "amazingBezier";
});

hl.animation({
    enabled = true;
    leaf = "borderangle";

    speed = 8;
    bezier = "default";
});
