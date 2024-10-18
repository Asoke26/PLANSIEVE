SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE u.UpVotes >= 270
AND u.UpVotes <= 3274
AND p.CreationDate >= 67
AND p.CreationDate <= 162

AND ph.PostId = p.Id
AND p.OwnerUserId = u.Id;