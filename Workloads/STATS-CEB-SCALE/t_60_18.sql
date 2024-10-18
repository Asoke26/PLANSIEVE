SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE p.Score >= 8
AND p.Score <= 96
AND p.FavoriteCount >= 39.0
AND pl.LinkTypeId = 1
AND v.VoteTypeId = 8
AND u.Reputation >= 601
AND c.CreationDate >= 1081
AND c.CreationDate <= 1448
AND pl.CreationDate >= 504
AND v.CreationDate <= 858
AND u.CreationDate >= 174
AND u.CreationDate <= 875

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;