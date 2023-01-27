# Requests for Discussion
Requests for Discussion is a documentation methodology designed to write down ideas for system enhancement to allow for actionable technical discussion. They differ from [IETF Request for Comments](https://en.wikipedia.org/wiki/Request_for_Comments),
as expressed by [RFC 3](https://tools.ietf.org/html/rfc3) in been less formal.

## RFDs Index
Add new RFDs to the index in the form
```| draft | [RFD 1 ](./rfd/xxxx/README.md) |```


| state    | RFD |
| -------- | ------------------------------------------------------------- |


## Getting started
There are two tools included in this repo to simplify the creation of RFD's. 
`tools/rfd` to create a new RFD
`tools/rfdlint` to try and identify linting issues in the RFD. 

These can be called through the provided `Makefile`

For example to create a new RFD;
`make new`

To run the linter;
`make check`

If the script to create a new RFD fails or you wish to do it manually the procedure is; 
1. Pull the latest from the remote.
2. Check the latest `branch` created. `git branch -l -a` (Note: branch names should be in the numeric form xxxx. e.g. 0001, 0002 etc)
3. Create a new branch in sequence. e.g. If the latest branch created was `0012` you would create a new branch `0013`. 
4. Make a new directory inside `rfd` with your branch name. `mkdir rfd/0013`
5. Copy the template to your new subdir. `cp template/README.md rfd/0013/README.md`
6. To reserve your Branch/RFD number push the branch to the remote. `git push -u origin 0013`

## Contents of an RFD
Simple markdown file that uses some metadata to describe its current state. Every RFD needs a title that serves as a simple synopsis of the document.

### Title

This is a simple synopsis of the document. Note, the title is not fixed.
It may change as the RFD evolves.

### What problem is this solving?

The goal here is to describe the problems that we are trying to address that motivate the solution. The problem should not be described in terms of the solution.

### Additional Sections

Additional sections can and do depend on the type of RFD, the content, and the subject matter. Examples might be to provide multiple possible solutions, the security impact of this change, the pros and cons of the solutions, etc. 

### RFD Metadata and State

The RFD document needs to include a brief amount of metadata, for example.

```markdown
---
authors: Han Solo <han.solo@shot.first.org>
state: draft
discussion: <link to discussion>
---
```

Note: A similar metadata reference should be added to this document in the `RFD's Index` above.

### State

1. draft
2. discussion
3. published
4. abandoned

`draft` indicates that the document is not yet ready for discussion.
`discussion` indicates the document is under active discussion.
`published` indicates the document has been approved.
`abandoned` indicates the document was not-approved or is non-viable for some other reason and will no longer be worked on. 

## Start the discussion

Once you are ready to start the discussion, change the status to `discussion`, push your branch with latest updates to the repo, make a PR, and create an Issue. 

An Issue should be created in the form of the RFD number and Title with a link back to your RFD branch. For example; 

The Title should be in the form;
```markdown
RFD 0001: <title>
```

With the content in the form;
```markdown
Issue to discuss <Link to <RFD 0001: <title> >
````

A `discussion` field should be added to the RFD metadata, with a URL that points to an issue query for the RFD number. For example:

```markdown
---
authors: Chewbacca <chewie77@falcon.org>
state: draft
discussion: https://github.com/xxxx/rfd/issues?q="RFD+0001"
---
```

## RFD Acceptance
Participants in the RFD discussion should be requested for review on the branch PR. Once the discussion has concluded including any requested changes made you should change the statis to `published`, push all changes to the remote and request approval on the PR from discussion participants. Once approved it should be merged to the main branch. 