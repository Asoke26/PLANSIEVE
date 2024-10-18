SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE u.UpVotes >= 12
AND u.UpVotes <= 339
AND p.CreationDate >= 515
AND p.CreationDate <= 1238

AND ph.PostId = p.Id
AND p.OwnerUserId = u.Id;