### DOCSHARE

## INTRODUCTION

Data access control is a challenging issue in public cloud storage systems.

Cipher text-policy attribute-based encryption (CP-ABE) has been adopted as a

promising technique to provide flexible, fine-grained, and secure data access

control for cloud storage with honest-but-curious cloud servers. Users may be

stuck in the waiting queue for a long period to obtain their secret keys,

thereby resulting in low efficiency of the system. Although multi-authority access

control schemes have been proposed, these schemes still cannot overcome the drawbacks

of single-point bottleneck and low efficiency, due to the fact that each of the

authorities still independently manages a disjoint attribute set.

- In this project I have proposed a novel heterogeneous framework to
remove the problem of single-point performance bottleneck and provide a more efficient
access control scheme with an auditing mechanism.
- My framework employs multiple attribute authorities to share the load of user legitimacy verification.
- Meanwhile, in this scheme, a central authority is introduced to generate secret keys for legitimacy verified users.
- Unlike other multi-authority access control schemes, each of the authorities in our scheme manages the whole attribute set individually.
- To enhance security, I have also proposed an auditing mechanism to detect which attribute authority has incorrectly or maliciously performed the legitimacy verification procedure.
- Analysis shows that the system not only guarantees the security requirements but also makes great performance improvement on key generation.

## How will you access

1. Download and extract the zip file.
2. Install a latest **tomcat server** into your PC/Laptop.
3. Install **SQLyog** software into your PC/Laptop.
4. Copy the whole source codes into your webapps folder.
5. Open your tomcat folder and copy the whole folder of *Docshare* into webapps.
6. Open Database->db file and ** _copy the sql commands in SQLyog_** and now you are done with sql connection.
7. Once you open the localhost in manager app you can view the folder you copied in webapps.
8. You can also run by typing in url. For Example `http://localhost:2016/Docshare/index.jsp` .
> All set you can view your project now.
