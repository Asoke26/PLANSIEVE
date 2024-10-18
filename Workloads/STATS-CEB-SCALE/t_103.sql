SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE u.DownVotes<=0
AND u.UpVotes>=0
AND u.UpVotes<=72
AND ph.CreationDate>=36
AND ph.CreationDate<=1537

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;