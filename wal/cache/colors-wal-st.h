const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#151515", /* black   */
  [1] = "#b44242", /* red     */
  [2] = "#95a328", /* green   */
  [3] = "#e1c135", /* yellow  */
  [4] = "#60928f", /* blue    */
  [5] = "#7c435a", /* magenta */
  [6] = "#a48b4a", /* cyan    */
  [7] = "#c2c2b0", /* white   */

  /* 8 bright colors */
  [8]  = "#3f3639",  /* black   */
  [9]  = "#dc7671",  /* red     */
  [10] = "#e8e85a", /* green   */
  [11] = "#9e9052", /* yellow  */
  [12] = "#76c39b", /* blue    */
  [13] = "#86596c", /* magenta */
  [14] = "#ceb34f", /* cyan    */
  [15] = "#b0afa8", /* white   */

  /* special colors */
  [256] = "#202020", /* background */
  [257] = "#c2c2b0", /* foreground */
  [258] = "#dc7671",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
