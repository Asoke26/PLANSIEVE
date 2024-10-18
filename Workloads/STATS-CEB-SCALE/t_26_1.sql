SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 19
AND v.BountyAmount <= 300.0
AND u.UpVotes >= 118
AND u.UpVotes <= 1014
AND c.CreationDate <= 1053
AND p.CreationDate >= 1350
AND v.CreationDate <= 1180
AND u.CreationDate >= 31

AND u.Id = c.UserId
AND u.Id = p.OwnerUserId
AND u.Id = v.UserId;