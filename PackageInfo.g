#############################################################################
##  
##  PackageInfo.g for the package `IO'                        Max Neunhoeffer
##
##  (created from Frank L�beck's PackageInfo.g template file)
##  

SetPackageInfo( rec(

##  This is case sensitive, use your preferred spelling.
PackageName := "IO",

##  This may be used by a default banner or on a Web page, should fit on
##  one line.
Subtitle := "Bindings for low level C library IO",

##  See '?Extending: Version Numbers' in GAP help for an explanation
##  of valid version numbers. For an automatic package distribution update
##  you must provide a new version number even after small changes.
Version := "5.0",

##  Release date of the current version in dd/mm/yyyy format.
Date := "11/07/2013",

##  Information about authors and maintainers.
Persons := [
  rec( 
    LastName      := "Neunhoeffer",
    FirstNames    := "Max",
    IsAuthor      := true,
    IsMaintainer  := true,
    Email         := "neunhoef@mcs.st-and.ac.uk",
    WWWHome       := "http://www-groups.mcs.st-and.ac.uk/~neunhoef/",
    PostalAddress := Concatenation( [
                       "School of Mathematics and Statistics\n",
                       "Mathematical Institute\n",
                       "North Haugh\n",
                       "St Andrews, Fife KY16 9SS\n",
                       "Scotland, UK" ] ),
    Place         := "St Andrews",
    Institution   := "University of St Andrews"
  ),
],

##  Status information. Currently the following cases are recognized:
##    "accepted"      for successfully refereed packages
##    "deposited"     for packages for which the GAP developers agreed 
##                    to distribute them with the core GAP system
##    "dev"           for development versions of packages 
##    "other"         for all other packages
##
# Status := "accepted",
Status := "deposited",

##  You must provide the next two entries if and only if the status is 
##  "accepted" because is was successfully refereed:
# format: 'name (place)'
# CommunicatedBy := "Mike Atkinson (St. Andrews)",
#CommunicatedBy := "",
# format: mm/yyyy
# AcceptDate := "08/1999",
#AcceptDate := "",

BaseURL := "http://www-groups.mcs.st-and.ac.uk/~neunhoef/Computer/Software/Gap/",

PackageWWWHome := Concatenation( ~.BaseURL, "io.html" ),
ArchiveURL     := Concatenation( ~.BaseURL, "io/io-", ~.Version ),
README_URL     := Concatenation( ~.BaseURL, "io/README.io" ),
PackageInfoURL := Concatenation( ~.BaseURL, "io/PackageInfo.g" ),

ArchiveFormats := ".tar.gz",

##  Here you  must provide a short abstract explaining the package content 
##  in HTML format (used on the package overview Web page) and an URL 
##  for a Webpage with more detailed information about the package
##  (not more than a few lines, less is ok):
##  Please, use '<span class="pkgname">GAP</span>' and
##  '<span class="pkgname">MyPKG</span>' for specifing package names.
##  
AbstractHTML := 
  "The <span class=\"pkgname\">IO</span> package, as its name suggests, \
   provides bindings for <span class=\"pkgname\">GAP</span> to the lower \
   levels of Input/Output functionality in the C library.",

PackageDoc := rec(
  BookName  := "IO",
  ArchiveURLSubset := ["doc"],
  HTMLStart := "doc/chap0.html",
  PDFFile   := "doc/manual.pdf",
  SixFile   := "doc/manual.six",
  LongTitle := "Bindings to low level I/O in the C library",
  Autoload  := true
),

Dependencies := rec(
  GAP := ">=4.5.5",
  NeededOtherPackages := [["GAPDoc", ">= 1.2"]],
  SuggestedOtherPackages := [],
  ExternalConditions := []
),

AvailabilityTest := function()
  if (not("io" in SHOW_STAT())) and
     (Filename(DirectoriesPackagePrograms("io"), "io.so") = fail) then
    #Info(InfoWarning, 1, "IO: kernel IO functions not available.");
    return fail;
  fi;
  return true;
end,

##  Suggest here if the package should be *automatically loaded* when GAP is 
##  started.  This should usually be 'false'. Say 'true' only if your package 
##  provides some improvements of the GAP library which are likely to enhance 
##  the overall system performance for many users.
Autoload := false,

##  *Optional*, but recommended: path relative to package root to a file which 
##  contains as many tests of the package functionality as sensible.
#TestFile := "tst/testall.g",

##  *Optional*: Here you can list some keyword related to the topic 
##  of the package.
Keywords := ["input", "output", "I/O", "C-library", "network", "http",
 "object serialisation", "unpredictable random numbers", "TCP/IP",
 "inter process communication", "background jobs", "parallel skeletons",
 "I/O multiplexing" ]

));


