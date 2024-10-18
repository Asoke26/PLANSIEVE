SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph
WHERE p.CommentCount >= 1
AND p.CommentCount <= 4

AND p.Id = c.PostId
AND p.Id = ph.PostId;