# Requests for Discussion
Requests for Discussion is a documentation methodology designed to write down ideas for system enhancement to allow for actionable technical discussion. They differ from [IETF Request for Comments](https://en.wikipedia.org/wiki/Request_for_Comments),
as expressed by [RFC 3](https://tools.ietf.org/html/rfc3) in been less formal.

## RFDs Index
Add new RFDs to the index in the form
```| draft | [RFD 1 ](./rfd/xxxx/README.md) |```


| state    | RFD |
| -------- | ------------------------------------------------------------- |


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

### State

1. draft
2. discussion
3. published
4. abandoned

`draft` indicates that the document is not yet ready for discussion.

`discussion` indicates the document is under active discussion.

`published` indicates the document has been approved.

`abandoned` indicates the document was not-approved or is non-viable for some other reason and will no longer be worked on. 