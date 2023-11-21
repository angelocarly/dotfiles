const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#251f1f", /* black   */
  [1] = "#eb4509", /* red     */
  [2] = "#94e76b", /* green   */
  [3] = "#ffac18", /* yellow  */
  [4] = "#46aede", /* blue    */
  [5] = "#e32c57", /* magenta */
  [6] = "#d6dbac", /* cyan    */
  [7] = "#efefef", /* white   */

  /* 8 bright colors */
  [8]  = "#5e5e5e",  /* black   */
  [9]  = "#eb4509",  /* red     */
  [10] = "#94e76b", /* green   */
  [11] = "#ffac18", /* yellow  */
  [12] = "#46aede", /* blue    */
  [13] = "#e32c57", /* magenta */
  [14] = "#d6dbac", /* cyan    */
  [15] = "#efefef", /* white   */

  /* special colors */
  [256] = "#000000", /* background */
  [257] = "#ffffff", /* foreground */
  [258] = "#eb4509",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
