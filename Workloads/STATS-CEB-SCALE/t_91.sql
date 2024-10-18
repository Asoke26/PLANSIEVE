SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE u.UpVotes>=0
AND u.UpVotes<=9
AND p.CreationDate>=56
AND p.CreationDate<=1531

AND ph.PostId = p.Id
AND p.OwnerUserId = u.Id;