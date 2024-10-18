SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE p.Score >= 17
AND p.Score <= 109
AND p.FavoriteCount >= 18.0
AND pl.LinkTypeId = 3
AND v.VoteTypeId = 2
AND u.Reputation >= 40
AND c.CreationDate >= 258
AND c.CreationDate <= 640
AND pl.CreationDate >= 1467
AND v.CreationDate <= 602
AND u.CreationDate >= 190
AND u.CreationDate <= 437

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;