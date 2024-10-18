SELECT COUNT(*)
 FROM comments c,
postLinks pl,
posts p,
users u,
badges b
WHERE p.ViewCount >= 3621.0
AND u.Reputation >= 186
AND c.CreationDate <= 1317

AND p.Id = pl.RelatedPostId
AND p.Id = c.PostId
AND u.Id = b.UserId
AND u.Id = p.OwnerUserId;