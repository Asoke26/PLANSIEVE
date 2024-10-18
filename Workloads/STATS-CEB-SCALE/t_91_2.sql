SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE u.UpVotes >= 83
AND u.UpVotes <= 92
AND p.CreationDate >= 115
AND p.CreationDate <= 901

AND ph.PostId = p.Id
AND p.OwnerUserId = u.Id;