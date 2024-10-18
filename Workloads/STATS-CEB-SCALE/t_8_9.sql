SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph
WHERE p.CommentCount >= 31
AND p.CommentCount <= 32

AND p.Id = c.PostId
AND p.Id = ph.PostId;