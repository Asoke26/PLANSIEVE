SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE u.UpVotes >= 63
AND u.UpVotes <= 518
AND p.CreationDate >= 37
AND p.CreationDate <= 527

AND ph.PostId = p.Id
AND p.OwnerUserId = u.Id;