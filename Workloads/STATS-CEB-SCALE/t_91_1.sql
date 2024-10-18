SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE u.UpVotes >= 97
AND u.UpVotes <= 323
AND p.CreationDate >= 1080
AND p.CreationDate <= 1387

AND ph.PostId = p.Id
AND p.OwnerUserId = u.Id;