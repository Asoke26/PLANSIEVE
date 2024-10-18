SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph
WHERE p.CommentCount >= 0
AND p.CommentCount <= 3

AND p.Id = c.PostId
AND p.Id = ph.PostId;