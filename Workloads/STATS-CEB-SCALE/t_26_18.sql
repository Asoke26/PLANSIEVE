SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 5
AND v.BountyAmount <= 350.0
AND u.UpVotes >= 103
AND u.UpVotes <= 857
AND c.CreationDate <= 618
AND p.CreationDate >= 760
AND v.CreationDate <= 549
AND u.CreationDate >= 304

AND u.Id = c.UserId
AND u.Id = p.OwnerUserId
AND u.Id = v.UserId;