// calculus_cover.asy
// B5 (ISO, 176 x 250 mm) cover page for the Calculus book. Black only.
//
// Build:  asy -f pdf calculus_cover.asy
// Needs:  LuaLaTeX + Libertinus fonts (set libertinus=false to use the
//         default TeX fonts instead, e.g. to test without Libertinus).

// ---- Edit these -------------------------------------------------------
bool   libertinus = true;
string title      = 'C\\,A\\,L\\,C\\,U\\,L\\,U\\,S';
string subtitle   = 'A Problem Oriented Approach';
string author     = 'Shiv Shankar Dayal';
string[] parts    = {
  'Part I \\quad Single Variable Calculus',
  'Part II \\quad Multivariable Calculus',
  'Part III \\quad Vector Calculus',
  'Part IV \\quad Ordinary Differential Equations'
};
// -----------------------------------------------------------------------

settings.outformat = "pdf";
if (libertinus) {
  settings.tex = "lualatex";
  texpreamble('\\usepackage{fontspec}\\usepackage{unicode-math}'
              '\\setmainfont{Libertinus Serif}\\setmathfont{Libertinus Math}');
}

unitsize(1mm);
real W = 176, H = 250;                       // ISO B5
fill(box((0,0), (W,H)), white);              // fixes the page box exactly

pen hair  = linewidth(0.3);
pen thin  = linewidth(0.45);
pen mid   = linewidth(0.9);
pen thick = linewidth(1.7);

// Double border
draw(box((7,7), (W-7,H-7)), mid);
draw(box((9.5,9.5), (W-9.5,H-9.5)), hair);

// Title block
label(title, (W/2, 222), fontsize(40));
draw((38,210)--(W-38,210), mid);
draw((38,208)--(W-38,208), hair);
label('\\textit{' + subtitle + '}', (W/2, 198), fontsize(16));

// ---- Figure: Riemann sum and tangent line ---------------------------
real f(real x)  { return 34 + 22*sin(x/19); }
pair O = (28, 108);
pair P(real x)  { return O + (x, f(x)); }

// Riemann rectangles (left sum) on [a,b]
real a = 24, b = 96;
int  n = 12;
real dx = (b - a)/n;
for (int i = 0; i < n; ++i) {
  real x = a + i*dx;
  draw(shift(O)*box((x,0), (x+dx, f(x))), thin);
}

// Axes
draw(O - (4,0) -- O + (130,0), thin, Arrow(3.5));
draw(O - (0,4) -- O + (0,68),  thin, Arrow(3.5));
label('$x$', O + (130,0), 1.5E);
label('$y$', O + (0,68),  1.5N);

// Curve
guide g = P(0);
for (real x = 3; x <= 122; x += 3) g = g .. P(x);
draw(g, thick);
label('$y=f(x)$', P(30), 2.2N);

// Tangent line at x0
real x0 = 108;
real m  = 22/19*cos(x0/19);
draw(P(x0) + (-14, -14*m) -- P(x0) + (14, 14*m), mid + dashed);
draw(O + (x0,0) -- P(x0), thin + dotted);
dot(P(x0), linewidth(3.2));

// Tick labels
label('$a$',   O + (a,0),  2S);
label('$b$',   O + (b,0),  2S);
label('$x_0$', O + (x0,0), 2S);

// ---- Formulas -------------------------------------------------------
label('$\\displaystyle f^{\\prime}(x_0)=\\lim_{h\\to 0}\\frac{f(x_0+h)-f(x_0)}{h}$',
      (W/2, 90), fontsize(12));
label('$\\displaystyle\\int_a^b f(x)\\,dx=\\lim_{n\\to\\infty}\\sum_{i=0}^{n-1}f(x_i)\\,\\Delta x$',
      (W/2, 76), fontsize(12));

// ---- Parts and author -----------------------------------------------
draw((50,66)--(W-50,66), hair);
real y = 57;
for (int i = 0; i < parts.length; ++i) {
  label(parts[i], (W/2, y), fontsize(10.5)+basealign);
  y -= 5.5;
}
draw((50,36)--(W-50,36), hair);
label(author, (W/2, 24), fontsize(15));
