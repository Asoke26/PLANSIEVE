SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 1
AND v.BountyAmount <= 100.0
AND u.UpVotes >= 2923
AND u.UpVotes <= 10523
AND c.CreationDate <= 1210
AND p.CreationDate >= 718
AND v.CreationDate <= 771
AND u.CreationDate >= 39

AND u.Id = c.UserId
AND u.Id = p.OwnerUserId
AND u.Id = v.UserId;