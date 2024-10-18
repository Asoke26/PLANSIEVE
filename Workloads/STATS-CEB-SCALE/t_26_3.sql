SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 0
AND v.BountyAmount <= 300.0
AND u.UpVotes >= 53
AND u.UpVotes <= 240
AND c.CreationDate <= 1170
AND p.CreationDate >= 1172
AND v.CreationDate <= 962
AND u.CreationDate >= 203

AND u.Id = c.UserId
AND u.Id = p.OwnerUserId
AND u.Id = v.UserId;