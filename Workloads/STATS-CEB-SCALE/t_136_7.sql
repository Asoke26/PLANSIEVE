SELECT COUNT(*)
 FROM comments c,
postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 3
AND p.Score >= 34
AND p.Score <= 40

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId;