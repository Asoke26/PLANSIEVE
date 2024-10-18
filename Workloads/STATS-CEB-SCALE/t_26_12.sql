SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 0
AND v.BountyAmount <= 100.0
AND u.UpVotes >= 252
AND u.UpVotes <= 482
AND c.CreationDate <= 888
AND p.CreationDate >= 1037
AND v.CreationDate <= 1375
AND u.CreationDate >= 663

AND u.Id = c.UserId
AND u.Id = p.OwnerUserId
AND u.Id = v.UserId;