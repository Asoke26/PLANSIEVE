SELECT COUNT(*)
 FROM comments c,
postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 1
AND p.Score >= -8
AND p.Score <= 35

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId;