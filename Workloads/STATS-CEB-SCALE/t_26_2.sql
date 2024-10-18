SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 1
AND v.BountyAmount <= 250.0
AND u.UpVotes >= 115
AND u.UpVotes <= 210
AND c.CreationDate <= 1343
AND p.CreationDate >= 1010
AND v.CreationDate <= 1225
AND u.CreationDate >= 97

AND u.Id = c.UserId
AND u.Id = p.OwnerUserId
AND u.Id = v.UserId;