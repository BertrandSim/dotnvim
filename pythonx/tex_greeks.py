# containss the following python objects:
   # greekalpha_lower: dictionary for lowercase alphabets
   # greekalpha_variants: dictionary for lowercase variants
   # greekalpha_upper: dictionary for uppercase alphabets
   # greekalpha_values: list of greek commands without the '\'

greekalpha_lower = {
# lower case letters
  'a':   'alpha',
  'b':   'beta',
  'g':   'gamma',
  'd':   'delta',
  'e':   'epsilon',
  'z':   'zeta',
  'h':   'eta',
  'q':   'theta',
  'i':   'iota',
  'k':   'kappa',
  'l':   'lambda',
  'm':   'mu',
  'n':   'nu',
  'c':   'xi',
  # omicron is simply 'o',
  'p':   'pi',
  'r':   'rho',
  's':   'sigma',
  't':   'tau',
  'u':   'upsilon',
  'f':   'phi',
  'x':   'chi',
  'y':   'psi',
  'w':   'omega',

  # # 2-char alternatives
  # 'th':  'theta',
  # 'ph':  'phi',
  # 'ch':  'chi',
  # 'ps':  'psi',

}

greekalpha_variants = {
# lower case variants
  'e':  'varepsilon',
  'q':  'vartheta',
  'p':  'varpi',
  'r':  'varrho',
  's':  'varsigma',
  'f':  'varphi',

  # 'th':  'vartheta',
  # 'ph':  'varphi',
}

greekalpha_upper = {
# Upper case letters
  'g':  'Gamma',
  'd':  'Delta',
  'q':  'Theta',
  'l':  'Lambda',
  'c':  'Xi',
  'p':  'Pi',
  's':  'Sigma',
  'u':  'Upsilon',
  'f':  'Phi',
  'y':  'Psi',
  'w':  'Omega',

  # 'th':  'Theta',
  # 'ph':  'Phi',
  # 'ps':  'Psi',
}


greekalpha_values = (
	list(greekalpha_lower.values()) +
	list(greekalpha_variants.values()) +
	list(greekalpha_upper.values())
)

