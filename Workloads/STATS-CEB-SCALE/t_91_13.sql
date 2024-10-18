SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE u.UpVotes >= 12
AND u.UpVotes <= 156
AND p.CreationDate >= 1323
AND p.CreationDate <= 1515

AND ph.PostId = p.Id
AND p.OwnerUserId = u.Id;