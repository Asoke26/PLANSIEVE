SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b,
users u
WHERE p.Score <= 70
AND p.CommentCount >= 25
AND pl.LinkTypeId = 1
AND p.CreationDate >= 650
AND p.CreationDate <= 1182

AND p.Id = pl.RelatedPostId
AND b.UserId = u.Id
AND c.UserId = u.Id
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = ph.PostId;