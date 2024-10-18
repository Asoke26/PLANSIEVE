SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE p.Score >= 30
AND p.Score <= 52
AND u.DownVotes >= 20
AND pl.CreationDate <= 557
AND v.CreationDate >= 1144
AND b.Date >= 508
AND b.Date <= 1448

AND u.Id = p.OwnerUserId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND p.Id = c.PostId
AND u.Id = b.UserId;