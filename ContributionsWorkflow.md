# Contribution and Development Guidelines

## First Things First: open an issue
To report a bug, request a new feature, propose a development or for any question, please open an [issue](https://gitlab.pam-retd.fr/thermosysproandco/ThermoSysPro/-/issues).

If you do not have an account on our GitLab platform you can:
- [Mail us](mailto:) to have your account created.
- Use the *Service Desk* [mail](mailto:) to open an issue by mail and be notified on updates.
- [Last resort] [Mail us](mailto:) your issue so that we can open it on GitLab on your behalf. 

## Development Committee
Regular monthly meeting are run by the EDF R&D team responsible for the development of ThermoSysPro. 
This Committee has the following objectives:
- Review new issues, discuss the potential solution, assign them to a developer.
- Approve developments and merge requests.
- Discuss the development roadmap (library main orientations for the future).

Partners or issue reporter may be invited to participate to this meeting.

## Code Development

### Repository structure
The [`master`](https://gitlab.pam-retd.fr/thermosysproandco/ThermoSysPro/-/tree/master?ref_type=heads) branch contains only official releases. This is the *default* branch of the repository. A *tag* is associated to each release. No development is made directly in this branch.

The [`develop`]() branch is the receptacle of all developments. `Feature` branches, where all developments are realized, originate in the `develop` branch and merge later on in it. The `develop` branch merges in the `master` to originate new official releases. 

```mermaid
%%{init: {'gitGraph': {'showCommitLabel': false, 'mainBranchName':'master'}} }%%
gitGraph
commit type: HIGHLIGHT tag: "3.2"
commit type: HIGHLIGHT tag: "4.0"
branch develop
branch feature_newPipe
commit
commit
checkout develop
merge feature_newPipe
branch feature_newMedia
commit
checkout develop
branch feature_newVolume
commit
checkout develop
merge feature_newVolume
checkout master
merge develop type: HIGHLIGHT tag: "4.1"
checkout feature_newMedia
commit
commit
checkout develop
merge feature_newMedia
checkout master
merge develop type: HIGHLIGHT tag: "5.0"

```
#### Notable exceptions
Developments which are not related to the actual code (for example, files for pipelines, readme, minor documentation modification, graphics...) can be developed:
- either on `minor` branches that originate directly on `master` and are directly merged on it,
- or by committing directly on `master`.

In both cases, such developments does not originate a new official release (no tag). This allows to quickly make available useful slight modifications (which do not affect the behavior of the models).

Another exception concerns **quick** bug correction. `hotFix` branches should originates in `develop`as common `feature` branches. However, their relative commit(s) should be cherry picked to `master`, giving place to a **patch version tag**. 

```mermaid
%%{init: {'gitGraph': {'showCommitLabel': true, 'mainBranchName':'master'}} }%%
gitGraph
commit type: HIGHLIGHT tag: "4.1"
branch develop order: 2
branch feature_newCorrelation order: 3
commit id:"  "
checkout master
commit id: "New readme"
checkout develop
branch hotFix_typo order: 4
commit id: "Coef fix"
checkout develop
merge hotFix_typo
checkout master
cherry-pick id: "Coef fix" tag: "4.1.1"
branch pipeline order: 1
commit id: "Pipeline test"
commit id: "Pipeline final"
checkout master
merge pipeline
checkout feature_newCorrelation
commit id:" "
```

### Workflow
Hero follows the workflow for contribution:
1. Reporter: open an issue.

The issue will be reviewed by the Development Committee in their periodic meeting. Discussion on how to solve the issue can take place there and the issue will be commented accordingly. This first review should not delay the reporter from developing a solution by himself/herself following the next steps of the workflow. A developer from the Development Committee can also be designated to solve the issue.

If developments are required (the issue is not a question, not *refused*...): 

2. Reporter/Developer: create a new `feature` branch from `develop`. The branch can be created from the issue itself (to link the future developments to the issue).
1. Reporter/Developer: realize the necessary developments in as many *atomic* commits as needed. Cite the issue `#ID` in commit messages to link commits and issue.
1. Reporter/Developer: create a merge request. 

The merge request will be reviewed by the Development Committee in their periodic meeting. 

5. If necessary, comments are added to the merge requests and some additional developments/iterations are needed.
1. DevCom: The merge request is accepted and the `feature` branch is merged in the `develop` branch.




```mermaid
flowchart
issue[Open issue] -.-> DC1([DevCom Issue Review])
DC2([DevCom Merge Review])
issue --> branch[feature branch]
branch --> Developments
Developments --> mergeR[Merge Request]
DC2 -.-> Merge
mergeR --> Merge 

```

### Non-Regression Tests 
Every commit pushed to the remote generates the following actions (*CI/CD pipeline*):

- Run non-regression tests:
    - Check, for a set of test models:
        - the translation,
        - the simulation.
    - Verification of results compared to reference calculation.
    - Report generation and its storage.
- Mail a notification to:
    - the committer, 
    - the *Dev Committee* members,
    - the person in charge of a test model in case of issues for that model. 
     
The *test models* are the models of the `Example` package of ThermoSysPro and an additional library of *private* models. Please [mail](mailto:giorgio.simonini@edf.fr) us if you want to include some of your model in the test suite.
