class BaseCustom
	VERSION = "1.0.2"
end

# Version 1.0.2
# * Cleaned up gemspec.
# Version 1.0.1
# * Enabled use of special characters like newline (\n) or tab (\t) to be counted
#   as acceptable numeric characters.  These characters can now also be printed with
#   expected behavior.
# Version 1.0.0
# * Bump version number. Gem has proven ready as a version 1 release.
# Version 0.1.8
# * Changed .all() to join by delimiter
# Version 0.1.7
# * added features .length() and .all()
# Version 0.1.6
# * Fixed 0 as 0 bug.
# Version 0.1.5
# * Added jmchambers' debug from jtzemp/base62 to avoid infinite loop in Rails 3.0.7
# Version 0.1.4
# * My father suggested delimiter splitting on String initialization made more sense.
# * Test-Unit assertions fixed/updated.
# Version 0.1.3
# * Fixed multicharacter numbering units
# * Added delimiter for multicharacter numbering units
# * Safe base type creation.  Each situation checked for and proper error messages.
# Version 0.1.2
# * Added unique to string init declaration
# * Added unique to array as well as checking that all array elements are strings
# Version 0.1.1
# * Flatten array's on input initialization
# Version 0.1.0
# * Complete Release
