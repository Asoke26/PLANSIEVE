SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 0
AND v.BountyAmount <= 500.0
AND u.UpVotes >= 9
AND u.UpVotes <= 59
AND c.CreationDate <= 1120
AND p.CreationDate >= 1330
AND v.CreationDate <= 638
AND u.CreationDate >= 367

AND u.Id = c.UserId
AND u.Id = p.OwnerUserId
AND u.Id = v.UserId;