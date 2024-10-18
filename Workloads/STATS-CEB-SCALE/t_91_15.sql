SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE u.UpVotes >= 65
AND u.UpVotes <= 705
AND p.CreationDate >= 951
AND p.CreationDate <= 1392

AND ph.PostId = p.Id
AND p.OwnerUserId = u.Id;