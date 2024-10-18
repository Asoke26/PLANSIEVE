SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE p.Score >= -1
AND p.Score <= 38
AND p.FavoriteCount >= 4.0
AND pl.LinkTypeId = 3
AND v.VoteTypeId = 16
AND u.Reputation >= 235
AND c.CreationDate >= 323
AND c.CreationDate <= 1108
AND pl.CreationDate >= 1416
AND v.CreationDate <= 1483
AND u.CreationDate >= 190
AND u.CreationDate <= 646

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;