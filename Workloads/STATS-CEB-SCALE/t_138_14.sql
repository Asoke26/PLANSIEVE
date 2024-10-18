SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE p.Score >= 0
AND p.Score <= 38
AND u.DownVotes >= 37
AND pl.CreationDate <= 1462
AND v.CreationDate >= 1410
AND b.Date >= 261
AND b.Date <= 778

AND u.Id = p.OwnerUserId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND p.Id = c.PostId
AND u.Id = b.UserId;