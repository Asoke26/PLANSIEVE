SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE p.Score >= 41
AND p.Score <= 123
AND p.FavoriteCount >= 3.0
AND pl.LinkTypeId = 1
AND v.VoteTypeId = 2
AND u.Reputation >= 302
AND c.CreationDate >= 588
AND c.CreationDate <= 1082
AND pl.CreationDate >= 587
AND v.CreationDate <= 1163
AND u.CreationDate >= 581
AND u.CreationDate <= 1458

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;