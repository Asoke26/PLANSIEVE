SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE p.Score >= 24
AND p.Score <= 109
AND p.FavoriteCount >= 16.0
AND pl.LinkTypeId = 3
AND v.VoteTypeId = 2
AND u.Reputation >= 158
AND c.CreationDate >= 502
AND c.CreationDate <= 866
AND pl.CreationDate >= 699
AND v.CreationDate <= 1341
AND u.CreationDate >= 181
AND u.CreationDate <= 1337

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;