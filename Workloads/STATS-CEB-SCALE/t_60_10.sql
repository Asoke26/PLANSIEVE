SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE p.Score >= 32
AND p.Score <= 60
AND p.FavoriteCount >= 12.0
AND pl.LinkTypeId = 1
AND v.VoteTypeId = 5
AND u.Reputation >= 40
AND c.CreationDate >= 583
AND c.CreationDate <= 686
AND pl.CreationDate >= 1434
AND v.CreationDate <= 1292
AND u.CreationDate >= 301
AND u.CreationDate <= 592

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;