# Operating Systems

2024/10/06

- namespaces
	- [Edo](//github.com/EdoardoLaGreca/9knowledge)	has a much better explanation
	- can be thought of as certain _perspectives_ of a file system. 

A name space can be thought as a certain perspective of the file system. Disks store some persistent files those being just just data in a memory device. Every file in the disk has a certain path, which informs about the location of the file. Unless you change the path of a file, or create or delete a file somewhere, the paths are fixed. However, thanks to the `bind` and `mount` operations, one can temporarily change the file system and model it at will. You can tell the operating system to mirror the changes to a file or directory to another file or directory (`bind`), or to add an remote file system to the local one and make it look local (`mount`).

One may read somewhere that name spaces are "unique to each process" or that they are "per-process name spaces". Both expressions refer to the same fact, which is that each name space is held by only one process, regardless of whether two name spaces are identical. A name space is not just a certain perspective, but an instance of that perspective, associated to a process.

- userland
	- all code running outside an OS' kernel. Usually referring to vorious programs and libraries that the OS uses to interact with the kernel
