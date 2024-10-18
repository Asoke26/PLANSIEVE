SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE p.Score >= 64
AND p.Score <= 98
AND p.FavoriteCount >= 47.0
AND pl.LinkTypeId = 1
AND v.VoteTypeId = 2
AND u.Reputation >= 622
AND c.CreationDate >= 278
AND c.CreationDate <= 1456
AND pl.CreationDate >= 620
AND v.CreationDate <= 1375
AND u.CreationDate >= 191
AND u.CreationDate <= 1351

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;