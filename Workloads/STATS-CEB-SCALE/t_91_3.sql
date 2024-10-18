SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE u.UpVotes >= 65
AND u.UpVotes <= 191
AND p.CreationDate >= 78
AND p.CreationDate <= 1443

AND ph.PostId = p.Id
AND p.OwnerUserId = u.Id;