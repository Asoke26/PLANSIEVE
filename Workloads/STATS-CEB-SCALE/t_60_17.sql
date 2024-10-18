SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE p.Score >= 87
AND p.Score <= 99
AND p.FavoriteCount >= 6.0
AND pl.LinkTypeId = 1
AND v.VoteTypeId = 8
AND u.Reputation >= 554
AND c.CreationDate >= 414
AND c.CreationDate <= 1464
AND pl.CreationDate >= 1319
AND v.CreationDate <= 1450
AND u.CreationDate >= 158
AND u.CreationDate <= 896

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;