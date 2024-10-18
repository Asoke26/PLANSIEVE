SELECT COUNT(*)
 FROM comments c,
postLinks pl,
posts p,
users u,
badges b
WHERE p.ViewCount >= 2472.0
AND u.Reputation >= 836
AND c.CreationDate <= 196

AND p.Id = pl.RelatedPostId
AND p.Id = c.PostId
AND u.Id = b.UserId
AND u.Id = p.OwnerUserId;