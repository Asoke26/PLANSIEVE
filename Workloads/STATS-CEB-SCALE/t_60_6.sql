SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE p.Score >= -7
AND p.Score <= 96
AND p.FavoriteCount >= 9.0
AND pl.LinkTypeId = 3
AND v.VoteTypeId = 5
AND u.Reputation >= 292
AND c.CreationDate >= 123
AND c.CreationDate <= 1021
AND pl.CreationDate >= 1238
AND v.CreationDate <= 1138
AND u.CreationDate >= 583
AND u.CreationDate <= 1325

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;