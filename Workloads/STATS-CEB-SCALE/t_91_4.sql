SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE u.UpVotes >= 87
AND u.UpVotes <= 328
AND p.CreationDate >= 81
AND p.CreationDate <= 86

AND ph.PostId = p.Id
AND p.OwnerUserId = u.Id;