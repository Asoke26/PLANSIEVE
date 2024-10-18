SELECT COUNT(*)
 FROM comments c,
postLinks pl,
posts p,
users u,
badges b
WHERE p.ViewCount >= 2229.0
AND u.Reputation >= 1010
AND c.CreationDate <= 337

AND p.Id = pl.RelatedPostId
AND p.Id = c.PostId
AND u.Id = b.UserId
AND u.Id = p.OwnerUserId;