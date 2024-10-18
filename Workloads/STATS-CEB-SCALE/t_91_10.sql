SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE u.UpVotes >= 124
AND u.UpVotes <= 358
AND p.CreationDate >= 703
AND p.CreationDate <= 1506

AND ph.PostId = p.Id
AND p.OwnerUserId = u.Id;