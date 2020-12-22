# alpine-htpasswd

Alpine-based image to manipulate .htpasswd-like files

## Usage

```bash
docker run -it --rm wildwildangel/alpine-htpasswd htpasswd-options-go-here
```

`htpasswd-options` are:
```
 -c  Create a new file.
 -n  Don't update file; display results on stdout.
 -b  Use the password from the command line rather than prompting for it.
 -i  Read password from stdin without verification (for script usage).
 -m  Force MD5 encryption of the password (default).
 -B  Force bcrypt encryption of the password (very secure).
 -C  Set the computing time used for the bcrypt algorithm
     (higher is more secure but slower, default: 5, valid: 4 to 17).
 -d  Force CRYPT encryption of the password (8 chars max, insecure).
 -s  Force SHA encryption of the password (insecure).
 -p  Do not encrypt the password (plaintext, insecure).
 -D  Delete the specified user.
 -v  Verify password for the specified user.
On other systems than Windows and NetWare the '-p' flag will probably not work.
The SHA algorithm does not use a salt and is less secure than the MD5 algorithm.
```

This help message will be displayed if no options specified.

## Example

**Create an entry for a user `user` and print it to `stdout`**:
```bash
docker run --rm -it wildwildangel/alpine-htpasswd -bnm user very-secure-password
```
