SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE p.Score >= 8
AND p.Score <= 23
AND p.FavoriteCount >= 5.0
AND pl.LinkTypeId = 3
AND v.VoteTypeId = 2
AND u.Reputation >= 369
AND c.CreationDate >= 302
AND c.CreationDate <= 521
AND pl.CreationDate >= 612
AND v.CreationDate <= 698
AND u.CreationDate >= 364
AND u.CreationDate <= 745

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;