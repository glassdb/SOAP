"Load and run tests to be performed by TravisCI"
| gitCache gitPath |
Transcript cr; show: 'travis---->travisCI.st'.

gitCache := 'git_cache'.
gitPath := (FileDirectory default directoryNamed: gitCache ) fullName.

"Load SOAP"
Metacello new
  baseline: 'SOAP';
  repository: 'filetree://', gitPath, '/SOAP/repository';
  load: 'CI'.

"Run the Tode tests"
TravisCIHarness
  value: #( 'BaselineOfSOAP' )
  value: 'TravisCISuccess.txt' 
  value: 'TravisCIFailure.txt'.
