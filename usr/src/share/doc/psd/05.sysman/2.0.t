.\" Copyright (c) 1983, 1993
.\"	The Regents of the University of California.  All rights reserved.
.\"
.\" %sccs.include.redist.roff%
.\"
.\"	@(#)2.0.t	8.3 (Berkeley) %G%
.\"
.Sh 1 "System facilities
.LP
The system abstractions described are:
.IP "Directory contexts
.br
A directory context is a position in the filesystem name
space.  Operations on files and other named objects in a filesystem are
always specified relative to such a context.
.IP "Files
.br
Files are used to store uninterpreted sequence of bytes on which
random access \fIreads\fP and \fIwrites\fP may occur.
Pages from files may also be mapped into process address space.
A directory may be read as a file if permitted by the underlying
storage facility,
though it is usually accessed using
.Fn getdirentries
(see section
.Xr 2.2.3.1 ).
(Local filesystems permit directories to be read, although most
NFS implementations do not allow reading of directories.)
.IP "Communications domains
.br
A communications domain represents
an interprocess communications environment, such as the communications
facilities of the 4.4BSD system,
communications in the INTERNET, or the resource sharing protocols
and access rights of a resource sharing system on a local network.
.IP "Sockets
.br
A socket is an endpoint of communication and the focal
point for IPC in a communications domain.  Sockets may be created in pairs,
or given names and used to rendezvous with other sockets
in a communications domain, accepting connections from these
sockets or exchanging messages with them.  These operations model
a labeled or unlabeled communications graph, and can be used in a
wide variety of communications domains.  Sockets can have different
\fItypes\fP\| to provide different semantics of communication,
increasing the flexibility of the model.
.IP "Terminals and other devices
.br
Devices include
terminals, providing input editing and interrupt generation
and output flow control and editing, magnetic tapes,
disks and other peripherals.  They often support the generic
\fIread\fP and \fIwrite\fP operations as well as a number of \fIioctl\fP\|s.
.IP "Processes
.br
Process descriptors provide facilities for control and debugging of
other processes.
