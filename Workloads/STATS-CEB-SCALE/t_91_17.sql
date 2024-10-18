SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE u.UpVotes >= 92
AND u.UpVotes <= 1014
AND p.CreationDate >= 1358
AND p.CreationDate <= 1396

AND ph.PostId = p.Id
AND p.OwnerUserId = u.Id;