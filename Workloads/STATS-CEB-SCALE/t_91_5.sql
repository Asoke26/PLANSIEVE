SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE u.UpVotes >= 43
AND u.UpVotes <= 910
AND p.CreationDate >= 898
AND p.CreationDate <= 1443

AND ph.PostId = p.Id
AND p.OwnerUserId = u.Id;