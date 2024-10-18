SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE p.Score >= -7
AND p.Score <= 89
AND u.DownVotes >= 14
AND pl.CreationDate <= 1332
AND v.CreationDate >= 199
AND b.Date >= 1300
AND b.Date <= 1433

AND u.Id = p.OwnerUserId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND p.Id = c.PostId
AND u.Id = b.UserId;