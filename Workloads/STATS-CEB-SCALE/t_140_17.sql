SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b,
users u
WHERE p.Score <= -13
AND p.CommentCount >= 9
AND pl.LinkTypeId = 1
AND p.CreationDate >= 668
AND p.CreationDate <= 1482

AND p.Id = pl.RelatedPostId
AND b.UserId = u.Id
AND c.UserId = u.Id
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = ph.PostId;