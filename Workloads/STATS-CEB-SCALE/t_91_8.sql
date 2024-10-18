SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE u.UpVotes >= 68
AND u.UpVotes <= 187
AND p.CreationDate >= 471
AND p.CreationDate <= 779

AND ph.PostId = p.Id
AND p.OwnerUserId = u.Id;