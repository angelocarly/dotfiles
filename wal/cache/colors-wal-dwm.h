static const char norm_fg[] = "#b0afa8";
static const char norm_bg[] = "#151515";
static const char norm_border[] = "#3f3639";

static const char sel_fg[] = "#b0afa8";
static const char sel_bg[] = "#95a328";
static const char sel_border[] = "#b0afa8";

static const char urg_fg[] = "#b0afa8";
static const char urg_bg[] = "#b44242";
static const char urg_border[] = "#b44242";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
