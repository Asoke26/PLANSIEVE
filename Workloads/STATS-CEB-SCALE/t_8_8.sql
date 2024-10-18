SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph
WHERE p.CommentCount >= 30
AND p.CommentCount <= 33

AND p.Id = c.PostId
AND p.Id = ph.PostId;