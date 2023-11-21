static const char norm_fg[] = "#efefef";
static const char norm_bg[] = "#251f1f";
static const char norm_border[] = "#5e5e5e";

static const char sel_fg[] = "#efefef";
static const char sel_bg[] = "#94e76b";
static const char sel_border[] = "#efefef";

static const char urg_fg[] = "#efefef";
static const char urg_bg[] = "#eb4509";
static const char urg_border[] = "#eb4509";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
