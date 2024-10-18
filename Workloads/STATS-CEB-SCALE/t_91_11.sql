SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE u.UpVotes >= 69
AND u.UpVotes <= 350
AND p.CreationDate >= 116
AND p.CreationDate <= 223

AND ph.PostId = p.Id
AND p.OwnerUserId = u.Id;