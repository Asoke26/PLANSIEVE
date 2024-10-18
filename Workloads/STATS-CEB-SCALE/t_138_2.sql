SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE p.Score >= -9
AND p.Score <= 192
AND u.DownVotes >= 65
AND pl.CreationDate <= 77
AND v.CreationDate >= 1304
AND b.Date >= 554
AND b.Date <= 1479

AND u.Id = p.OwnerUserId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND p.Id = c.PostId
AND u.Id = b.UserId;